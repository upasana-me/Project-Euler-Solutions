# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

#!/usr/bin/perl

use strict;
use warnings;

sub isPrime($);

my ($i, $j, $k, $currentPrime) = (2, sqrt(600851475143), 600851475143, 0);

for( $i = 2; $i < $j; $i++ )
{
    if( ( $k % $i ) == 0 )
    {
	if(isPrime($i))
	{
	    $currentPrime = $i;
	}
    }
}

print "currentTime is $currentPrime\n"; 

sub isPrime($)
{
    my $number = shift;
    my ($i, $j) = (2, sqrt($number));
    
    for( $i = 2; $i < $j; $i++ )
    {
	if( $number % $i == 0 )
	{
	    print "Returning false for $number\n";
	    return 0;
	}
    }

    print "Returning true for $number\n";
    return 1;
}
