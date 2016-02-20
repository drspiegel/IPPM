import time


def bitsize (x): # return a bit size of a non-negative (>=0) integer number
    return(len(bin(x))-2)

def bitwidth (x): # syn of bitsize()
    return bitsize(x)

def getNumBits (x): # syn of bitsize()
    return bitsize(x)

# return integer log of a base 2
def nlz (x): # alg. from a book
    if (x == 0):
        return 32
    n = 1
    if ((x >> 16) == 0):
        n += 16
        x <<= 16
    if ((x >> 24) == 0):
        n += 8
        x <<= 8
    if ((x >> 28) == 0):
        n += 4
        x <<= 4
    if ((x >> 30) == 0):
        n += 2
        x <<= 2
    n -= (x >> 31)
    return n

def bitsize2 (x):
    if (x == 0):
        return 1
    elif x < 0:
        return -1
    else:
        return 32 - 1 - nlz(x ^ (x << 1))
        #return 33 - 1 - nlz(x ^ (x >> 31))

# for i in range(0, 16):
#     #x = x ^ (x >> 31)
#     print("i = {0} => {1} bits".format(i, bitsize2(i)))

#t1 = time.time()
#a = bitsize(31**10000000)
#time.sleep(2.0)
#t2 = time.time()
#print("Runtime is {0} {1}".format(a, t2 - t1))

#import timeit

#a = timeit.Timer('for i in range(10): bin(i)', 'gc.enable()').timeit()
#a = timeit.Timer('import toexec').timeit()
#print(a)

#a = timeit.Timer('len(bin(31**1000))-2').timeit()
#print(a)

