# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

#!/usr/bin/perl

use strict;
use warnings;

my ($flag, $i, $j, $k, $prod) = (0);

for( $i = 1; ($i <= 1000) && ($flag == 0); $i++ )
{
    for( $j = 1; ($j <= 1000) && ($flag == 0); $j++ )
    {
	for( $k = 1; ($k <= 1000) && ($flag == 0); $k++ )
	{
	    if( ($i + $j + $k == 1000) && isPythagoras($i, $j, $k) )
	    {
		$flag = 1;
	    }
	}
    }
}

$prod = (--$i)*(--$j)*(--$k);

print "$prod\n";

sub isPythagoras
{
    my ($i, $j, $k) = (shift, shift, shift);
    my ($i2, $j2, $k2) = ($i*$i, $j*$j, $k*$k);

    if( ($i2 + $j2) == $k2 )
    {
	return 1;
    }
    elsif( ($i2 + $k2) == $j2 )
    {
	return 1;
    }
    elsif( ($j2 + $k2) == $i2 )
    {
	return 1;
    }
    
    return 0;
}
