#include <stdio.h>

int isPalindrome(int, int, int);

int main()
{
  int i, j, k, prod, flag = 0;

  for( i = 1; (flag == 0) && (i <= 1000); i++ )
    for( j = 1; (flag == 0) && (j <= 1000); j++ )
      for( k = 1; (flag == 0) && (k <= 1000); k++ )
	if( (i + j + k == 1000) && (isPalindrome(i, j, k)))
	  flag = 1;

  prod = (--i)*(--j)*(--k);
  printf("%d\n", prod);
}

int isPalindrome(int i, int j, int k)
{
  int i2 = i*i;
  int j2 = j*j;
  int k2 = k*k;

  if( i2 + j2 == k2 )
    return 1;
  else if( i2 + k2 == j2 )
    return 1;
  else if( j2 + k2 == i2 )
    return 1;

  return 0;
}
