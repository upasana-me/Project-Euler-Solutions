#!/usr/bin/env perl

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

use strict;
use warnings;

my ($firstTerm, $secondTerm, $currentTerm, $sum) = (0, 1, 1, 0);

while( $currentTerm < 4000000 )
{
    $currentTerm = $firstTerm + $secondTerm;
    if( $currentTerm % 2 == 0 )
    {
	$sum += $currentTerm;
    }
    $firstTerm = $secondTerm;
    $secondTerm = $currentTerm;
}

print "$sum\n";
