#!/usr/bin/perl

# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

use strict;
use warnings;

my ($start, $end, $number, $count, $current, $i, $j) = (1, 1000000, 0, 0);
# my %startingNoToChain;

for( $i = $start; $i < $end; $i++ )
{
    $current = $i;
    $j = 1;
    if( $current % 2 == 0 )
    {
	$current = $current / 2;
    }
    else
    {
	$current = (3*$current) + 1;
    }
	
    $j++;

    while( $current != 1 )
    {
	if( $current % 2 == 0 )
	{
	    $current = $current / 2;
	}
	else
	{
	    $current = (3*$current) + 1;
	}
	$j++;
    }

    if( $j > $count )
    {
	$number = $i;
	$count = $j;
    }
}

print "$number\n";
