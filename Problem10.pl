#!/usr/bin/env perl

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

use strict;
use warnings;

my ($end, $sum, $i) = (2000000, 2);

for( $i = 3; $i < $end; $i++ )
{
    $sum += $i if isPrime($i);
}

print "$sum\n";

sub isPrime
{
    my $number = shift;
    my $i;
    
    for( $i = 2; $i <= sqrt($number); $i++ )
    {
	if( $number % $i == 0 )
	{
	    return 0;
	}
    }

    return 1;
}
