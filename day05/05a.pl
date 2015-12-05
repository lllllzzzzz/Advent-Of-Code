#!/usr/bin/perl
 
use warnings;
use strict;
 
my $nNiceStrings = 0;
 
while (my $line = <>) {
    if ($line =~ /[aeiou].*[aeiou].*[aeiou]/) {
        if ($line =~ /\w*(\w)\1\w*/) {
            if ($line !~ /ab|cd|pq|xy/) {
                $nNiceStrings++;
            }
        }
    }
}
 
printf("%d\n", $nNiceStrings);
