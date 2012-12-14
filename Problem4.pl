# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

#!/usr/bin/perl

use strict;
use warnings;

our $largestPalindrome = 0;

my ($start, $middle, $end) = (100, 500, 999);
my ($i, $j);
my $product = 0;

testProduct($start, $middle, $start, $middle);
testProduct($start, $middle, $middle, $end );
testProduct($middle, $end, $middle, $end );

print "$largestPalindrome\n";

sub testProduct
{
    my ($start1, $end1, $start2, $end2) = @_[0..3];

#    print "start1 = $start1, end1 = $end1\n";
#    print "start2 = $start2, end2 = $end2\n";

    for( $i = $start1; $i <= $end1; $i++ )
    {
	for( $j = $start2; $j <= $end2; $j++ )
	{
#	    print "i = $i and j = $j\n";
	    $product = $i * $j;
#	    print "product = $product\n";
	    if( isPalindrome($product) )
	    {
		if( $product > $largestPalindrome )
		    {
			$largestPalindrome = $product;
		    }
	    }
	}
    }
}

sub isPalindrome
{
    my $number = $_[0];
    my @numbers = ();
    my ($quotient, $i);

#    print "number = $number\n";

    for( $i = 100000; $i > 1; $i /= 10 )
    {
	$quotient = int($number / $i);
	if( $quotient >= 1 || $quotient == 0 )
	{
	    push @numbers, $quotient;
	    $number = $number % $i;
	}
    }

    push @numbers, $number;
    
#    print "numbers : @numbers\n";
    
    my @numbersReversed = reverse @numbers;
    
    for( $i = 0; $i <= $#numbersReversed; $i++ )
    {
	if( $numbersReversed[ $i ] != $numbers[$i] )
	{
	    return 0;
	}
    }

    return 1;
}
