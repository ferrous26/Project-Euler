// Problem #17 --- Number of letters written numbers one, two..one thousand

#include <stdio.h>

int main() {

  int ones_column[] = {0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8};
  int tens_column[] = {0, 0, 6, 6, 5, 5, 5, 7, 6, 6};

  int total     = 8984; // 891*10 + 9*7 + 11 is "hundred and" and "hundred" and "one thousand"
  int remainder = 0;

  for (int i = 1; i < 100; i++) {
    if ( (remainder = (i % 100)) < 20 ) {
      total += ones_column[remainder];
    } else {
      total += tens_column[(remainder - (remainder = i % 10)) / 10];
      total += ones_column[remainder];
    }
  }

  for (int i = 100; i < 1000; i++) {
    if ( (remainder = (i % 100)) < 20 ) {
      total += ones_column[remainder];
      total += ones_column[(i - remainder) / 100];
    } else {
      total += ones_column[(i - remainder) / 100];
      total += tens_column[(remainder - (remainder = i % 10)) / 10];
      total += ones_column[remainder];
    }
  }

  printf("%d\n", total);

  return 0;
}
