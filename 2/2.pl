#!/usr/bin/env perl

use strict;
use warnings;

my $max_num = 4000000;
my @sequence = (1,2);
my @evens = (2);

while ($sequence[1] < $max_num) {
    my $num = $sequence[0]+$sequence[1];
    push @sequence, $num;
    if ($num % 2 == 0) {
	push @evens, $num;
    }
    shift @sequence;
}

my $sum = 0;
for (@evens) {
    $sum += $_;
}

print "$sum\n";
