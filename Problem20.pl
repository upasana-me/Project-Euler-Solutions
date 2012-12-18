# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

#!/usr/bin/perl

use strict;
use warnings;

import config;

my ($power50, $limit, $carry, $i, $j) = (1, 50, 0);
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
