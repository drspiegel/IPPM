import fractions
import primesieve

def coprime (a, b):
    return fractions.gcd(a, b) == 1

def gcd3 (a, b):
    for k in range(min(a, b), 1, -1):
        if (a % k == 0 and b % k == 0):
            return k
    return 1

def gcd2 (a, b):
    while b: #b != 0
        a, b = b, a % b
    return a

def coprime2 (a, b):
    return gcd2(a, b) == 1

def rprime(a, b): # gcd2() & coprime2()
    while b: #b != 0
        a, b = b, a%b
    return a == 1

def isMutuallyCoprime (*A):
    for i in range(len(A)):
        for j in range(len(A)):
            if (i == j):
                continue
            if (not coprime(A[i], A[j])):
                return False
    return True

def fact (n):
    # print("fact(): n={0}".format(n))
    it2 = primesieve.Iterator()
    hh = {}
    # flag = 1
    while (n > 1):
        a = int(it2.next_prime())
        c = 0 # counter
        while (n % a == 0):
            n /= a
            c += 1
        # if (a != 2 and c > 1):
        #     flag = 0
        if c > 0:
            hh[a] = c
    # print("fact(): hh = {0}".format(hh))
    return hh
