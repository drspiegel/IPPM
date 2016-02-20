#!/usr/bin/perl

def gcd (m, n):
    while (m != n):
        if (m > n):
            m = m - n
        else:
            n = n - m
        return m

def gcd (a, b):
def gcd (a, b, c, )


# ast.literal_eval(node_or_string)

    my ($n1, $n2) = @_;
    for (my $k = min($n1, $n2); $k > 1; $k--) {
        last if ($k == 0);
        if ($n1 % $k == 0 and $n2 % $k == 0) {
            return $k; # gcd
            #last;
        }
    }
    return 1;
}

def coPrime (a, b):
    if (gcd(a, b) != 1):
      return
    else:
      print "%0d and %0d are co-prime" % (a, b)

sub isMutuallyCoprime

gcd is in the fractions
rprime = lambda a,b: gcd(a,b) == 1


def rprime(a,b):
    while b: #b != 0
        a,b = b, a%b
    return a == 1





inspect.getsource(fractions.gcd))


def coprime(u, v):
{
    if (((u | v) & 1) == 0):
        return false

    while ((u & 1) == 0):
        u >>= 1;
    if (u == 1):
        return True;

    while (v != 0):
         while ((v & 1) == 0):
             v >>= 1;
         if (v == 1):
             return true;
         if (u > v):
             t = v
             v = u
             u = t
         v -= u
    return False
do
    {
        while ((v & 1) == 0) v >>= 1;
        if (v == 1) return true;

        if (u > v) { long t = v; v = u; u = t; }
        v -= u;
    } while (v != 0);

    return false;
}
