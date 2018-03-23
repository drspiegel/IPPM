#!/usr/bin/perl

use Cwd;
use File::Basename;
use Data::Dumper;

my $root = Cwd::realpath(".");

my $celllist = "$root/celllist.txt";

chomp(my @cells = `cat $celllist`);
print Dumper(\@cells);

my $dir1 = "$root/STAN18/results";
my $dir2 = "$root/PT/results";

my $out = "$root/critical_paths_STAN18_PT.csv";

open OUT, ">$out" or die "ERROR: Can't create file $out: $!";

print OUT "Circuit;Critical path;;Status\n";
print OUT ";STAN18;PrimeTime;\n";

foreach my $cell (@cells) {
	my $f1 = "$dir1/${cell}_timing.txt";
	my @P1 = ();
	if (-f "$f1") {
		chomp(@P1 = `sed '/Point/,/(Path is unconstrained)/!d' $f1 | sed '1,2d' | sed '\$d' | sed '\$d' | sed '\$d' | awk '{print \$1,\$2}'`);
	} else {
		print "WARNING: File $f1 doesn't exist!";
	}
	
	my $f2 = "$dir2/${cell}_timing.txt";
	my @P2 = ();
	if (-f "$f2") {
		chomp(@P2 = `sed '/Point/,/(Path is unconstrained)/!d' $f2 | sed '1,2d' | sed '\$d' | sed '\$d' | sed '\$d' | awk '{print \$1,\$2}'`);
	} else {
		print "WARNING: File $f2 doesn't exist!";
	}
	print OUT "$cell;;;\n";
	
	for (my $i = 0; $i < 1e+6; $i++) {
		last unless (@P1 or @P2);
		my $p1 = "";
		while (1) {
			last unless (@P1);
			$p1 = shift @P1;
			last if ($p1 ne 'input external');
		}
		my $p2 = "";
		while (1) {
			last unless (@P2);
			$p2 = shift @P2;
			last if ($p2 ne 'input external');
		}
		my $status = 'PASS';
		if ($p1 ne $p2) {
			print "cell=$cell: '$p1' vs '$p2'\n";
			$status = 'FAIL';
		}
		print OUT ";$p1;$p2;$status\n";
	}
}

close OUT;

__END__

