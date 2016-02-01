: # -*- perl -*-
eval 'exec perl -S $0 ${1+"$@"}'
   if 0;

$|=1;

use Data::Dumper;
use bigint;

sub min ($$) {
    my ($n1, $n2) = @_;
    if ($n1 < $n2) { return $n1 }
    else { return $n2 }
}

sub gcd ($$) {
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

sub isMutuallyCoprime {
    my @S = @_;
    #return 1 if (scalar(@S) == 1);
    #return 1 if (scalar(@S) == 2);
    
    for (my $i = 0; $i <= $#S; $i++) {
        for (my $j = 0; $j <= $#S; $j++) {
            next if ($i == $j);
            return 0 if (gcd($S[$i], $S[$j]) != 1);
        }
    }
    return 1;
}

my $dr = $ARGV[0];
my $dr2 = 2 ** $dr;
print "dr=$dr;\n";
print "2**$dr=$dr2;\n";

my $n = 2;
my $mult;
my @M;
my @K;
my $flag;

A: while (1) { # loop on n
    print "n=$n\n";
    @M = ();
    @K = ();
    $mult = 1;
    my $k = 1;
    B: while (1) { # loop on k
        my $m = (2**$n) - $k;
        if ($k % 2 == 0) {$k += 1; next;}
        
        last B if ($m <= 1);
        
        print "k=$k;m=$m;";
        
        if ($flag = isMutuallyCoprime(@M, $m)) {
            push @M, $m;
            push @K, $k;
            $mult *= $m;
            last A if ($mult >= $dr2);
        }
        print "flag=$flag\n";
        $k++;
    }
    print "K=@K\n";
    print "M=@M\n";
    print "mult=$mult\n";
    $n++;
}

print "\@K = @K\n";
print "\@M = @M\n";
print "mult=$mult\n";

print "basis = {", join(", ", map {"(2**$n)-$_"} @K), "}\n";
