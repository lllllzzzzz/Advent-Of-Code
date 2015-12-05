#!/usr/bin/perl

use warnings;
use strict;

my $total;
my @nums;

while (my $line = <>) {
    if ($line =~ /^\d+x\d+x\d+$/) {
        @nums = split("x", $line);

        my $l = int($nums[0]);
        my $w = int($nums[1]);
        my $h = int($nums[2]);

        @nums = sort {$a <=> $b} @nums;
        $a = int($nums[0]);
        $b = int($nums[1]);

        $total += (2 * $a) + (2 * $b) + ($l * $w * $h);
    }
}

printf("%d\n", $total);
