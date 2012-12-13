# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#!/usr/bin/perl

use strict;
use warnings;

# simply find HCF of all numbers between 1 & 20, then 

my $allPrimesProd = 5 * 7 * 11 * 13 * 17 * 19 * 16 * 9;

print "$allPrimesProd\n";

