#include <stdio.h>
#include <math.h>

int main()
{
  int power = 1000;
  long long int result[10];
  int currentResult = 1, previousResult = 2;
  int index = 0;

  for( index = 0; index < 30; index++ )
    {
      previousResult <<= 1;
      printf("%d => %d\n",index,previousResult);
    }
  /*  
  for( i = 1; i <= power; i++ )
    {
      currentResult <<= 1;
    }
  */
}
