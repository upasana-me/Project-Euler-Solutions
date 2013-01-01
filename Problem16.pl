#!/usr/bin/env perl

# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

use strict;
use warnings;

import config;

my ($power50, $limit, $carry, $i, $j) = (1, 50, 0);
$_ = '0'x1000;
my @tempResult = split//;
my @result1;

for( $i = 1; $i <= 50; $i++ )
{
    $power50 <<= 1;
}

$_ = $power50;

@tempResult = reverse split//;
for( $i = 51; $i <= 1000; $i++ )
{
    for( $j = 0; $j <= $#tempResult; $j++ )
    {
	$tempResult[$j] *= 2;
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
