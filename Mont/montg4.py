#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import random
import gmpy2

def mod (a, b):
    return a % b
# end of mod()



start_bit, finish_bit = (2, 3)
radix = 2

def sqr_n_mult(x):
    global e
    global M
    P = []
    Z = []
    P[0] = 1
    Z[0] = x
    n = (e.bit_length() or 1)
    e = gmpy2.xmpz(e)
    for i in range(0, n):
        Z[i+1] = pow(Z[i], 2, M)
        if (e[i] == 1):
            P[i+1] = mod(P[i]*Z[i], M)
        else:
            P[i+1] = P[i]
    return P
# end of sqr_n_mult()


#Fast exponentiation algorithms
#Square-and-multiply method (I). 

# z = x^e mod n
def sqr_n_mult2(x, e, n):
    z = 1
    y = x
    global j
    for i in range(0, j):
        if (e[i] == 1):
            z = mod(z*y, n)
        y = mod(y*y, n)
    return z
# end of sqr_n_mult2()


if __name__ == "__main__":
    MM = 3, 7, 11, 29, 59, 107, 239
    random.seed()
    for M in range(0, 700):
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

#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import random
import gmpy2

start_bit, finish_bit = (2, 3)
radix = 2 base of 

if __name__ == "__main__":
    for n in range(pow(radix, start_bit), pow(radix, finish_bit)):
        if (n % 2 == 0):
            continue
        print("Output: n={0}".format(n))

        http://younglinux.info/python/task/even-odd
        https://habrahabr.ru/post/122538/
        http://forum.sources.ru/index.php?showtopic=348429
        http://pythonworld.ru/moduli/modul-random.html
        
