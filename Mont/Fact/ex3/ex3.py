#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import numtheory

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print ("Error: Too few arguments in {0}, expected 2.".format(sys.argv[0]))
        sys.exit(1)
    if len(sys.argv) > 3:
        print ("Error: Too many arguments in {0}, expected 2.".format(sys.argv[0]))
        sys.exit(1)
    dr = eval(sys.argv[1])
    print("DR = eval('{0}') = {1}".format(sys.argv[1], dr))
    n = eval(sys.argv[2])
    print("n = eval('{0}') = {1}".format(sys.argv[2], n))

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
        print("k={0};pi={1};BASIS={2}".format(k, pi, BASIS))
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

print(', '.join(map(lambda k: "(2**{n})-{k}".format(n=n, k=k), K)))
