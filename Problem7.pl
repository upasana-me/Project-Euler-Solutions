# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

#!/usr/bin/perl

use strict;
use warnings;

sub isPrime($);

my ($n, $flag, $i, $j, $k, $prime) = (10001, 1, 1);

for( $j = 3; $i < $n; $j++ )
{
    if( isPrime($j) )
    {
	$prime = $j;
	$i++;
	print "i = $i\n";
    }
}

print "$prime\n";

sub isPrime($)
{
    my $number = shift;
    my ($i, $j) = (2, sqrt($number));
    
    for( $i = 2; $i <= $j; $i++ )
    {
	if( ($number % $i) == 0 )
	{
#	    print "Returning false for $number\n";
	    return 0;
	}
    }

    print "Returning true for $number\n";
    return 1;
}

