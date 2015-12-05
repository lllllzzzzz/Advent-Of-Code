#!/usr/bin/perl

use warnings;
use strict;
use List::Util qw(min);

my $total;
my @nums;

while (my $line = <>) {
    if ($line =~ /^\d+x\d+x\d+$/) {
        @nums = split("x", $line);

        my $l = int($nums[0]);
        my $w = int($nums[1]);
        my $h = int($nums[2]);

        my $areaMin = min($l * $w, $w * $h, $h * $l);
        $total += (2 * (($l * $w) + ($w * $h) + ($h * $l))) + $areaMin;
    }
}

printf("%d\n", $total);
