#include <R.h>
#include <math.h>

void mysqrt(int *size, double *input, double *output)
{
  int i = 0;
  for(i=0; i < *size; i++)
  {
    output[i]=sqrt(input[i]);
  }
}


