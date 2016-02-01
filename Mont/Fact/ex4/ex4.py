#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import primesieve

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print ("Error: Too few parameters in {0}, expected 1.".format(sys.argv[0]))
        sys.exit(1)
    else:
        dr = eval(sys.argv[1])
        print("DR = eval('{0}') = {1}".format(sys.argv[1], dr))
        pr = []
        P = 1
        it = primesieve.Iterator()
        it.next_prime() # to ignore 2

        while (P < dr):
            pi = it.next_prime()
            pr.append(str(pi))
            P *= pi
        print("P = {1} = {0}".format(P, ' * '.join(pr)))
