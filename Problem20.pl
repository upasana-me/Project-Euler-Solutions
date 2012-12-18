# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

#!/usr/bin/perl

use strict;
use warnings;

import config;

my ($carry, $i, $j) = (0);
$_ = '0'x1000;
my @tempResult = split//;
$tempResult[0] = 1;
my @result1;

for( $i = 100; $i >= 1; $i-- )
{
    for( $j = 0; $j <= $#tempResult; $j++ )
    {
	$tempResult[$j] *= $i;
	$tempResult[$j] += $carry;
	$carry = $tempResult[$j] / 10;
	my $remainder = $tempResult[$j] % 10;
	$tempResult[$j] = $remainder;
    }

    $tempResult[$j] = $carry;
    $carry = 0;
}

my $sum = 0;

for( $i = 0; $i < ($j - 1); $i++ )
{
    $sum += $tempResult[$i];
}

print "$sum\n";
