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

my $out = "$root/diff_max_delay_STAN18_PT.csv";

open OUT, ">$out" or die "ERROR: Can't create file $out: $!";

print OUT "Circuit;Max delay, ns;;Variance;\n";
print OUT ";STAN18;PrimeTime;ns * 1E-6;% * 1E-4\n";

foreach my $cell (@cells) {
	my $f;
	my $o1 = "NaN";
	my $o2 = "NaN";
	
	my $f1 = "$dir1/${cell}_timing.txt";
	my $o1 = "NaN";
	if (-f "$f1") {
		chomp($o1 = `sed '/data arrival time/!d' $f1 | awk '{print \$4}'`);
	} else {
		print "WARNING: File $f1 doesn't exist!";
	}
	
	my $f2 = "$dir2/${cell}_timing.txt";
	my $o2 = "NaN";
	if (-f "$f2") {
		chomp($o2 = `sed '/data arrival time/!d' $f2 | awk '{print \$4}'`);
	} else {
		print "WARNING: File $f2 doesn't exist!";
	}
	
	#$o1 = "NaN";
		
	my $v;
	eval { $v = $o1 - $o2 }; warn $@ if $@; # $v = "NaN" if $@;
	if (isnum($v)) {
		$v = sprintf("%d", $v*1e+6);
	} else {
		$v = "NaN";
	}
	
	my $p;
	eval { $p = 100*($o1*1.0/$o2 - 1) }; warn $@ if $@; # $p = "NaN" if $@;
	if (isnum($p)) {
		$p = sprintf("%.2f", $p*1e+4);
	} else {
		$p = "NaN";
	}
	print OUT "$cell;$o1;$o2;$v;$p\n";
}

close OUT;

sub isnum {
	my $entry = shift;
	#return 1 if ($entry =~ /^([+-]?)(?=\d&\.\d)\d*(\.\d*)?([Ee]([+-]?\d+))?$/);
	return 1 unless ($entry eq "nan");
	return 0;
}


__END__

