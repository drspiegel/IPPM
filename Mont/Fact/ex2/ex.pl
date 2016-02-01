: # -*- perl -*-
eval 'exec perl -S $0 ${1+"$@"}'
   if 0;

$|=1;

use Data::Dumper;
use bigint;

my $dr = $ARGV[0];
my $dr2 = 2 ** $dr;
my $n = 1;
print "dr=$dr;\n";
print "2**$dr=$dr2;\n";

while (1) {
    my $mult = ((2**$n)-1)*(2**$n)*((2**$n)+1);
    if ($mult >= $dr2) {
        if (1) {
            print "basis = {(2**$n)-1, 2**$n, (2**$n)+1}\n";
            last;
        }
    }
    $n++;
}
