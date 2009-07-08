// problem10.c --- Sum of primes under 2000000

#include<stdio.h>
#include<stdlib.h>
typedef long long bigint;

int main() {

  bigint  j    = 0;
  bigint  i    = 0;
  bigint  sum  = 2;
  bigint* nums = (bigint*)malloc(sizeof(bigint)*2000001);

  for ( i = 3; i < 2000001; i += 2 )
    nums[i] = i;

  // only has to go to sqrt of 2000000 which is about 1414
  for ( i = 3; i < 1414; i += 2 )
    if ( nums[i] != 0 ) {
      sum += nums[i];
      for ( j = i; j < 2000001; j += i )
        nums[j] = 0;
    }

  for ( i = 1415; i < 2000001; i += 2 )
    sum += nums[i];

  printf("%llu\n", sum);

  free(nums);
  return 0;
}
