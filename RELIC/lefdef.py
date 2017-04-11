#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import re
from pprint import pprint

def parse_def(path):
    with open(path, 'r') as f:
        text = f.read()
    f.close()
    p = re.compile('UNITS DISTANCE MICRONS (\d+)')
    scale = float(p.findall(text).pop(0))
    #print(scale)
    p = re.compile('COMPONENTS(.+?)END COMPONENTS', re.DOTALL)
    blocktext = p.findall(text)
    #print(blocktext)
    hh = {}
    for s in blocktext.pop(0).split(';'):
        #pprint(s)
        s = s.lstrip()
        #pprint(s)
        p = re.compile('^- (\w+) (\w+) \+ PLACED \( (\d+) (\d+) \) FS')
        ss = p.findall(s)
        if ss and len(ss[0]) == 4:
            #pprint(ss)
            inst, module, x0, y0 = ss[0]
            x0, y0 = map(lambda z: float(z) / scale, (x0, y0))
            (x1, y1) = (x0, y0)

            width, height = parse_lef('silterra18_4lm.lef', module)
            #pprint(width)
            #pprint(height)
            x1 = x0 + width
            y1 = y0 + height
            #hh[inst] = {module: (x0, y0, x1, y1)}
            hh[inst] = (x0, y0, x1, y1)
    return hh

def parse_lef(path, name):
    #parse_lef('silterra18_4lm.lef', 'AOI221X2')
    with open(path, 'r') as f:
        text = f.read()
    f.close()
    p = re.compile('UNITS(.+?)END UNITS', re.DOTALL)
    blocktext = p.findall(text)
    #print(blocktext)
    p = re.compile('DATABASE MICRONS (\d+)')
    scale = float(p.findall(blocktext.pop(0)).pop(0))
    #print(scale)
    p = re.compile('MACRO {0}(.+?)END {0}'.format(name.upper()), re.DOTALL)
    blocktext = p.findall(text)
    #print(blocktext)
    p = re.compile('SIZE (\S+) BY (\S+)')
    #x, y = p.findall(blocktext.pop(0)).pop(0)
    x, y = p.findall(blocktext.pop(0)).pop(0)
    #print(x, y)
    x, y = map(lambda z: float(z)*1, (x, y))
    return (x, y)

class Point(object):
    def __init__(self, x, y):
        self.x = x
        self.y = y

class Rect(object):
    def __init__(self, p1, p2):
        '''Store the top, bottom, left and right values for points
               p1 and p2 are the (corners) in either order
        '''
        self.left   = min(p1.x, p2.x)
        self.right  = max(p1.x, p2.x)
        self.bottom = min(p1.y, p2.y)
        self.top    = max(p1.y, p2.y)

    @staticmethod
    def overlap(r1, r2):
        '''
        Overlapping rectangles overlap both horizontally & vertically
        is_particle_in_rect
        '''
        h_overlaps = (r1.left <= r2.right) and (r1.right >= r2.left)
        v_overlaps = (r1.bottom <= r2.top) and (r1.top >= r2.bottom)
        return h_overlaps and v_overlaps

def create_affected_area(x, y, indent):
    return (x-indent, y-indent, x+indent, y+indent)

if __name__ == "__main__":
    heavy_particle = (25, 25)
    X0, Y0, X1, Y1 = create_affected_area(25, 25, 0.12)
    P0 = Point(X0, Y0)
    P1 = Point(X1, Y1)
    R = Rect(P0, P1)
    hh = parse_def('c17_orig.def')
    pprint(hh)
    for (key, val) in hh.items():
        #print(key)
        p0 = Point(val[0], val[1])
        p1 = Point(val[2], val[3])
        r1 = Rect(p0, p1)
        if Rect.overlap(R, r1):
            print('Affected instance: ' + key)
