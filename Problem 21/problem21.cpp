/* problem21.cpp --- Project Euler

  Let d(n) be defined as the sum of proper divisors of n (numbers less
  than n which divide evenly into n). If d(a) = b and d(b) = a,
  where a /= b, then a and b are an amicable pair and each of a and b
  are called amicable numbers.

  For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20,
  22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of
  284 are 1, 2, 4, 71 and 142; so d(284) = 220.

  Evaluate the sum of all the amicable numbers under 10000.
*/

#include <iostream>
using namespace std;

int main() {

  int sum = 0;
  int da = 0;
  int db = 0;

  for ( int a = 1; a < 10000; a++ ) {

    for ( int i = 1; i < a; i++ )
      if ( a % i == 0 )
        da += i;

    for ( int j = 1; j < da; j++ )
      if ( da % j == 0 )
        db += j;

    if ( db == a )
      if ( a != da )
        sum += a;

    da = 0;
    db = 0;
  }

  cout << sum << endl;

  return EXIT_SUCCESS;
}
