#!/usr/bin/perl
 
use warnings;
use strict;
 
my $floor = 0;
my %parens = (
    "(" => 1,
    ")" => -1
);
 
while (my $line = <>) {
    for my $ch (split(//, $line)) {
        $floor += $parens{$ch} if ($ch =~ /\(|\)/);
    }
}
 
printf("%d\n", $floor);
