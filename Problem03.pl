#!/usr/bin/env perl

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

use strict;
use warnings;

sub isPrime($);

my @primesArray = ();
my ($i, $j, $k, $currentPrime, $number) = (2, sqrt(600851475143), 600851475143, 0, 600851475143);

for( $i = 2; $i < $j; $i++ )
{
    if( ( $k % $i ) == 0 )
    {
	if(isPrime($i))
	{
	    $k = $k / $i;
	    push @primesArray, $i;
	}
    }
}

print "$primesArray[$#primesArray]\n"; 

# function for checking if a given number is prime or not, returns true if prime
sub isPrime($)
{
    my $number = @_;
    my ($i, $j) = (2, sqrt($number));
    
    for( $i = 2; $i <= $j; $i++ )
    {
	if( $number % $i == 0 )
	{
	    return 0;
	}
    }

    return 1;
}
