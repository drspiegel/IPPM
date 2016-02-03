#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import primesieve

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print ("Error: Too few arguments in {0}, expected 1.".format(sys.argv[0]))
        sys.exit(1)
    if len(sys.argv) > 2:
        print ("Error: Too many arguments in {0}, expected 1.".format(sys.argv[0]))
        sys.exit(1)
    dr = eval(sys.argv[1])
    print("DR = eval('{0}') = {1}".format(sys.argv[1], dr))
    BASIS = []
    P = 1
    it = primesieve.Iterator()
    it.next_prime() # to ignore 2

    while (P < dr):
        pi = it.next_prime()
        BASIS.append(str(pi))
        P *= pi
    print("P = {1} = {0}".format(P, ' * '.join(BASIS)))
