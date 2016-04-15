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
   
def MonPro2 (X, Y): # Montgomery multiplication calc. (a_* b_) * r_ mod n
    global n
    global s
    #global n_
    #global r
    n11 = modinv(n, 2) # r = 2
    n11_ = 2 - n1
    
    A = 0
    m = s # (n.bit_length() or 1)
    x = gmpy2.xmpz(X)
    y = gmpy2.xmpz(Y)
    for k in range(0, m):
        a = gmpy2.xmpz(A)
        q = mod((a[0] + x[k]*y[0])*n11_, 2) # pow(2, k)
        A = (A + x[k]*Y + q*n) // 2
    if (A >= n):          # ??????
        A = A - n
    return A

if __name__ == "__main__":
    ### print("Hello World!")
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
        b = random.randint(0, n-1)

        # transformation of a and b
        a_ = mod(a * r, n)
        b_ = mod(b * r, n)

        x_ = MonPro2(a_, b_)
        x = MonPro2(x_, 1)
        #x = x_
        #x = MonPro2(a, b)
        orig = (a * b) % n
        
        print("Output-A: n={0}; a={1}; b={2}; x={3}; orig={4};".format(n, a, b, x, orig))
        
        if x != orig:
            print("Error-A: n={0}; a={1}; b={2}; x={3}; orig={4};".format(n, a, b, x, orig))
