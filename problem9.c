/* problem9.c --- Find the product of the pythagorean triplet which sums to 1000 */
#include<stdio.h>
#include<math.h>
int main () {
  int i,j,temp1,temp2;
  for ( i = 1; i < 1000; i++ ) 
    for ( j = 1; j < 1000; j++ ) {
      temp1 = pow(i,2) + pow(j,2);
      temp2 = pow(1000-i-j,2);
      if ( temp1 == temp2 ) {
        printf ("%u\n", i*j*(1000-i-j));
        return 0;
      }
    }
  return 0;
}

