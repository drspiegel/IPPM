#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import numtheory
import primesieve

def doit (fact):
    for p in fact.keys():
        if (p != 2 and fact[p] > 1):
            return False
    return True

def _expr (a, b):
    if b > 1:
        return "({0}**{1})".format(a, b)
    else:
        return str(a)

def expr (fact):
    return ' * '.join(map(lambda p: _expr(p, fact[p]), fact.keys()))

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print ("Error: Too few arguments in {0}, expected 1.".format(sys.argv[0]))
        sys.exit(1)
    if len(sys.argv) > 3:
        print ("Error: Too many arguments in {0}, expected 2.".format(sys.argv[0]))
        sys.exit(1)
    dr = eval(sys.argv[1])
    print("DR = eval('{0}') = {1}".format(sys.argv[1], dr))
    # bit = None
    bit = eval(sys.argv[2])
    print("bit = eval('{0}') = {1}".format(sys.argv[2], bit))

    BASIS = []
    BASIS2 = {}
    P = 1
    it = primesieve.Iterator()
    if (bit is None): # set iterator start number
        it.skipto(2)
    else:
        it.skipto(pow(2, bit-1)-1)

    while (P < dr): # loop on pi
        pi = int(it.next_prime())
        F = numtheory.fact(pi-1)
        if (doit(F)):
            BASIS.append(str(pi))
            BASIS2[pi] = expr(F)
            P *= pi
        print("pi = {0}; {0} - 1 = {1} = {2}; P = {3}; ok = {4};".format(pi, pi-1, expr(F), P, doit(F)))
        if (bit is not None):
            if (pi >= pow(2, bit)):
                print("Warning: Searching for factors with bit length {0}...".format(bit+1))
            if (pi >= pow(2, bit+1)):
                print("Error: There are no factors with bit length {0} and {1}!".format(bit, bit+1))
                break

    print("P = {1} = {0}".format(P, ' * '.join(BASIS)))
    for pi in BASIS2.keys():
        print("{pi} - 1 = {expr}".format(pi=pi, expr=BASIS2[pi]))
