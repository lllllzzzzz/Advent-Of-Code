#!/usr/bin/perl
 
use warnings;
use strict;
 
if (($#ARGV + 1) != 2) {
    exit -1;
}
 
my $sequence = $ARGV[0];
my $nTimes = $ARGV[1];
 
my $nextSequence;
my %count;
 
for (my $i = 0; $i < $nTimes; $i++) {
    $count{$_} = 0 for (0..9);
    $nextSequence = "";
    my @nums = split(//, $sequence);
 
    for (my $i = 0; $i <= $#nums; $i++) {
        $count{$nums[$i]}++;
 
        if ($i == $#nums) {
            $nextSequence .= $count{$nums[$i]} . $nums[$i];
        } elsif ($nums[$i] != $nums[$i + 1]) {
            $count{$nums[$i + 1]} = 0;
            $nextSequence .= $count{$nums[$i]} . $nums[$i];
        }
    }
 
    print $nextSequence . "\n";
    $sequence = $nextSequence;
}
