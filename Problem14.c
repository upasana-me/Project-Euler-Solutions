#include <stdio.h>

int main()
{
  unsigned int i, j, start = 1, end = 1000000, current, number, count = 0;

  for( i = start; i < end; i++ )
    {
      current = i;
      j = 1;
      if( current % 2 == 0 )
	current = current / 2;
      else
	current = (3*current) + 1;

      j++;
      while( current != 1 )
	{
	  if( current % 2 == 0 )
	    current = current / 2;
	  else
	    current = (3*current) + 1;
	  
	  j++;
	}

      if( j > count )
	{
	  count = j;
	  number = i;
	}
    }

  printf("%u\n",number);
}
