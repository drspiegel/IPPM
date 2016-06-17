#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import random
import gmpy2


# end of mod()



start_bit, finish_bit = (2, 3)
radix = 2

def sqr_n_mult(x, e, n):
    P = []
    Z = []
    P[0] = 1
    Z[0] = x
    global j
    for i in range(0, j):
        Ptemp = mod(P[i]*Z[i], n)
        Z[i+1] = mod(Z[i]*Z[i], n)
        if (e[i] == 1):
            P[i+1] = Ptemp
        else:
            P[i+1] = P[i]
    return P
# end of sqr_n_mult

def mod (a, b):
    return a % b

def bit_width(e): # where e is a positive integer
    return e.bit_length() or 1

def sqr_n_mult(x, e, n): # z = x**e (mod n)
# Fast exponentiation algorithms
# Square-and-multiply method 
# Right-to-left binary algorithm    
    z = 1
    y = x
    for i in range(0, bit_width(e)):
        if (e[i] == 1):
            z = mod(z*y, n)
        y = mod(y*y, n)
    return z
    
    
# end of sqr_n_mult

a1 = bit_width(2)
print(a1)

if __name__ == "__main__":
    MM = 3, 7, 11, 29, 59, 107, 239
    random.seed()
    for M in range(0, 2**15):
        if (M % 2 == 0):
            continue
        a = random.randint(0, M-1)
        e = random.randint(0, M-1)
        j = (e.bit_length() or 1)
        e = gmpy2.xmpz(e)
        x = sqr_n_mult2(a, e, M)
        orig = pow(a, e, M)
        if x != orig:
            print("Error-B: n={0}; a={1}; e={2}; x={3}; orig={4};".format(M, a, e, x, orig))
        

#    for n in range(pow(radix, start_bit), pow(radix, finish_bit)):
#        if (n % 2 == 0):
#            continue
#        print("Output: n={0}".format(n))


        #http://younglinux.info/python/task/even-odd
        #https://habrahabr.ru/post/122538/
        #http://forum.sources.ru/index.php?showtopic=348429
        #http://pythonworld.ru/moduli/modul-random.html
        
