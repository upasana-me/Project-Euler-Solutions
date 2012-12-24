#!/usr/bin/perl

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

use strict;
use warnings;

my ($carry, $i, $j) = (0);
$_ = '0'x1000;
my @firstTerm = split//;
my @secondTerm = split//;
my @currentTerm = split//;
$firstTerm[0] = 1;
$secondTerm[0] = 1;
my $highestJ = 0;

for( $i = 3;; $i++ )
{
    for( $j = 0; $j <= $highestJ; $j++ )
    {
	$currentTerm[$j] = $firstTerm[$j] + $secondTerm[$j] + $carry;
	if( $currentTerm[$j] >= 10 )
	{
	    $currentTerm[$j] = $currentTerm[$j] - 10;
	    $carry = 1;
	}
	else
	{
	    $carry = 0;
	}
    }

    if( $carry == 1 )
    {
	$currentTerm[$j] = 1;
	$highestJ++;
	$carry = 0;
    }
    
    last if($highestJ == 999 );

    @firstTerm = @secondTerm;
    @secondTerm = @currentTerm;

}

print "$i\n";

