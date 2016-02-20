#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import random

def bitsize (x): # return a bit size of a non-negative (>=0) integer number
    return(len(bin(x))-2)

def mod (a, b):
    return a % b

def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, y, x = egcd(b % a, a)
        return (g, x - (b // a) * y, y)

def modinv(a, m):
    gcd, x, y = egcd(a, m)
    if gcd != 1:
        return None  # modular inverse does not exist
    else:
        return x % m

def montgPro(a, b, n):
    s = bitsize(n)
    r = pow(2, s)
    #print("r={0};".format(r), end=' ')
    if not r > n:
        print("Error: bad r!")
        sys.exit(1)

    r_ = modinv(r, n)
    n1 = modinv(n, r)

    if mod(r * r_, n) != 1:
        print("Error: bad r_!")
        sys.exit(1)
    if mod(n * n1, r) != 1:
        print("Error: bad n1!")
        sys.exit(1)

    n_ = r - n1
    a_ = mod(a * r, n)
    b_ = mod(b * r, n)

    t = a_ * b_
    m = mod(t * n_, r)
    t = t + m * n
    t = t // r

    return mod(t * r_, n)

def mm (a_, b_, n, n_, r):
    t = a_ * b_
    m = mod(t * n_, r)
    t = t + m * n
    u = t // r
    if (u >= n):
        return u - n
    else:
        return u

def montgExp(a, e, n):
    s = bitsize(n)
    r = pow(2, s)
    #print("r={0};".format(r), end=' ')
    if not r > n:
        print("Error: bad r!")
        sys.exit(1)

    r_ = modinv(r, n)
    n1 = modinv(n, r)

    if mod(r * r_, n) != 1:
        print("Error: bad r_!")
        sys.exit(1)
    if mod(n * n1, r) != 1:
        print("Error: bad n1!")
        sys.exit(1)

    n_ = r - n1
    a_ = mod(a * r, n)
    # b_ = mod(b * r, n)
    x_ = mod(1 * r, n)

    oo = bin(e)
    #print(e, oo)
    j = bitsize(e)
    for i in range(j-1, -1, -1): # for from j-1 to 0
        x_ = mm(x_, x_, n, n_, r)
        #print(i)


        if (int(oo[i+2]) == 1):
            #print(i, i+2, oo[i+2])
            x_ = mm(x_, a_, n, n_, r)
    x_ = mm(x_, 1, n, n_, r)

    return mod(x_ * r_, n)


    #return x
    #return mod(x * r_, n)

# 2 - 4 3
# 4 - 8 7
# 8 - 16 11
# 16 - 32 29
# 32 - 64 59
# 64 - 128 107
# 128-256 239

N = 3, 7, 11, 29, 59, 107, 239
print(N)

random.seed()

for n in N:
    a = random.randint(0, n-1)
    b = random.randint(0, n-1)

    v = montgPro(a, b, n)
    orig = (a*b) % n
    if v != orig:
        print("Error-A: n={0}; a={1}; b={2}; v={3}; orig={4};".format(n, a, b, v, orig))
    e = b
    v = montgExp(a, e, n)
    orig = pow(a, e) % n
    if v != orig:
        print("Error-B: n={0}; a={1}; e={2}; v={3}; orig={4};".format(n, a, e, v, orig))

