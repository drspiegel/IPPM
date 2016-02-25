#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import random
import gmpy2

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

def MonPro (a_, b_): # Montgomery multiplication calc. (a_* b_) * r_ mod n
    global n
    global n_
    global r
    t = a_ * b_
    u = (t + mod(t * n_, r) * n) // r
    if (u >= n):
        return u - n
    else:
        return u

def ModExp (a, e, n): # Modular exponentiation with MonPro
    global r
    a_ = mod(a * r, n)
    x_ = mod(1 * r, n)
    j = (e.bit_length() or 1)
    e = gmpy2.xmpz(e)
    for i in range(j-1, -1, -1): # loop on i from j-1 downto 0
        x_ = MonPro(x_, x_)
        if (e[i] == 1):
            x_ = MonPro(x_, a_)
    return MonPro(x_, 1)  # mod(x_ * r_, n)

if __name__ == "__main__":
    N = 3, 7, 11, 29, 59, 107, 239
    random.seed()
    for n in N:

        # input: 0 <= a, b < n; r=(2**s) > n; gcd(r, n) = 1
        s = (n.bit_length() or 1)
        r = pow(2, s)

        # r * r_ - n * n_ = gcd(r, n) = 1
        r_ = modinv(r, n)
        n1 = modinv(n, r)
        n_ = r - n1

        a = random.randint(0, n-1)
        e = random.randint(0, n-1)
        x = ModExp(a, e, n)
        orig = pow(a, e, n)
        if x != orig:
            print("Error-B: n={0}; a={1}; e={2}; x={3}; orig={4};".format(n, a, e, x, orig))

        a = random.randint(0, n-1)
        b = random.randint(0, n-1)

        # transformation of a and b
        a_ = mod(a * r, n)
        b_ = mod(b * r, n)

        x_ = MonPro(a_, b_)
        x = MonPro(x_, 1)
        orig = (a * b) % n
        if x != orig:
            print("Error-A: n={0}; a={1}; b={2}; x={3}; orig={4};".format(n, a, b, x, orig))
