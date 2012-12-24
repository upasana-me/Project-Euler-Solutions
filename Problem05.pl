#!/usr/bin/perl

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

use strict;
use warnings;

my ($start, $i, $j) = (20, 20);
my ($allDivided, $failed) = (1, 0);

for( $i = 20; ; $i++ )
{
    for( $j = 2; $j <= 20; $j++ )
    {
	
    }

    if( $allDivided == 1 && $failed == 0)
    {
	print "Smallest number divisible by all of the number from 1 to 20 is $i\n";
    }
}
