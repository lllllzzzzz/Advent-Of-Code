#!/usr/bin/perl
 
use warnings;
use strict;
 
my $product = 0;
 
while (my $line = <>) {
    $product += $_ foreach ($line =~ /-?\d+/g);
}
 
printf("%d\n", $product);
