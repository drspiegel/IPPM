#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import numtheory

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print ("Error: Too few parameters in {0}, expected 1.".format(sys.argv[0]))
        sys.exit(1)
    else:
        dr = eval(sys.argv[1])
        print("DR = eval('{0}') = {1}".format(sys.argv[1], dr))
        n = 2
        while(True): # loop on n
            print("n = {0}".format(n))
            BASIS = []
            K = []
            P = 1
            k = 1
            while(True): # loop on k
                if (k % 2 == 0):
                    k += 1
                    continue
                pi = pow(2, n) - k
                if (pi <= 1):
                    break
                print("n={0};k={1};pi={2};BASIS={3}".format(n, k, pi, BASIS))
                flag = numtheory.isMutuallyCoprime(*BASIS + [pi])
                if (flag):
                    BASIS.append(pi)
                    K.append(k)
                    P *= pi
                print("flag={0}".format(flag))
                if (P >= dr):
                    break
                k += 1
            print("K = {0}".format(K))
            print("BASIS = {0}".format(BASIS))
            print("P = {0}".format(P))
            if (P >= dr):
                break
            n += 1

        print(', '.join(map(lambda k: "(2**{n})-{k}".format(n=n, k=k), K)))
