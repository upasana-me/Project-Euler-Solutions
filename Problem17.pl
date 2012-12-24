#!/usr/bin/perl

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

use strict;
use warnings;

my %numberToWord = ( 
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred",
    1000 => "thousand"
);

my $x = 1000 / 10 - 10;
my %numberToOccurences = (
    1 => $x + 100 + 1,
    2 => $x + 100, # + 1,
    3 => $x + 100,# + 1,
    4 => $x + 100,# + 1,
    5 => $x + 100,# + 1,
    6 => $x + 100,# + 1,
    7 => $x + 100,# + 1,
    8 => $x + 100,# + 1,
    9 => $x + 100,# + 1,
    10 => 10,
    11 => 10,
    12 => 10,
    13 => 10,
    14 => 10,
    15 => 10,
    16 => 10,
    17 => 10,
    18 => 10,
    19 => 10,
    20 => 100,
    30 => 100,
    40 => 100,
    50 => 100,
    60 => 100,
    70 => 100,
    80 => 100,
    90 => 100,
    100 => (999 - 99),
    1000 => 1,
    and => (99*9)
);

my $total = 0;

for( keys %numberToWord )
{
    my $x = length($numberToWord{$_})*$numberToOccurences{$_};
    $total += $x;
}

$total = $total + length("and")*$numberToOccurences{and};

print "$total\n";			  
