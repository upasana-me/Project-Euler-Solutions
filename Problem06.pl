#!/usr/bin/perl

# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

use strict;
use warnings;

# formulae for sum of first n natural numbers is n(n+1)/2 & sum of sqaures of first n natural numbers is n(n+1)(2n+1)/6

my ($n, $sum, $sumOfSquares) = (100, (100 * ( 100 + 1) / 2), (100*(100+1)*(2*100 + 1)/6));
my $difference = $sumOfSqaures - $sum;

print "difference = $difference\n";
