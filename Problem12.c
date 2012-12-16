#include <stdio.h>
#include <math.h>

int noOfDivisors(int);

int main()
{
  int i, j = 0, flag = 0, nd = 0, incr = 50;

  //  i = findStart(5000000);

  for( i = 1 ; flag == 0; i++ )// = i + incr )
    {
      j += i;
      if( (nd = noOfDivisors(j)) > 500 )
	{
	  flag = 1;
	}
      //      printf("nd = %d, j = %d, i = %d\n", nd,j,i);
    }

  printf("%d\n", j);
}

int findStart(int sum)
{
  int n1, n2;

  n1 = (-1 + sqrt(1 + sum*4)) / 2;
  n2 = (-1 - sqrt(1 + sum*4)) / 2;

  if( n1 < 0 )
    return (int)n2;
  else
    return (int)n1;
}

int noOfDivisors(int i)
{
  int j = sqrt((double)i), k, noOfDivisors = 2, l, flag = 0;
  //  printf("%d\n", j);

  for( k = 2; k <= j; k++ )
    {
      if( (i % k) == 0 )
	{
	  l = i / k;
	  if( l != k )
	    noOfDivisors++;
	  noOfDivisors++;
	}
    }
  
  return noOfDivisors;
}
