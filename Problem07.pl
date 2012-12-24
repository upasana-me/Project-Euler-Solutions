#!/usr/bin/perl

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

use strict;
use warnings;

my ($n, $flag, $i, $j) = (10001, 1);

for( $i = 2; $i <= $n; $i++ )
{
    for( $j = 3; $i <= $n; $j++ )
    {
	for( $k = 2; $k <= sqrt($j); $k++ )
	{
	    if( ( $j % $k ) == 0 )
	    {
		$flag = 0;
		last;
	    }
	}
	$i++ if $flag == 1;
    }
}
