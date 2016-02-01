#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print ("Error: Too few arguments in {0}, expected 1.".format(sys.argv[0]))
        sys.exit(1)
    if len(sys.argv) > 2:
        print ("Error: Too many arguments in {0}, expected 1.".format(sys.argv[0]))
        sys.exit(1)
    dr = eval(sys.argv[1])
    print("DR = eval('{0}') = {1}".format(sys.argv[1], dr))

    P = 1
    n = 1
    while(True): # loop on n
        p1, p2, p3 = (pow(2, n)-1), pow(2, n), (pow(2, n)+1)
        P = p1*p2*p3;
        if (P >= dr):
            break
        n += 1

    print("BASIS = {0}".format((p1, p2, p3)))
    print("P = {0}".format(P))
    K = ('-1', '', '+1')

    print(', '.join(map(lambda k: "(2**{n}){k}".format(n=n, k=k), K)))
