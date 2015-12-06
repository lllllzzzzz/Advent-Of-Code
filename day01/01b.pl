#!/usr/bin/perl
 
use warnings;
use strict;
 
my $floor = 0;
my $pos = 1;
my %parens = (
    "(" => 1,
    ")" => -1
);
 
while (my $line = <>) {
    for my $ch (split(//, $line)) {
        if ($floor != -1 and $ch =~ /\(|\)/) {
            $floor += $parens{$ch};
            $pos++;
        }
    }
}
 
printf("%d\n", $pos - 1);
