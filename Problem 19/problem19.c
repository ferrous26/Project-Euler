// Problem 19 -- Number of Sundays occurring on the first of a month from 1901-2000

#include <stdio.h>
#include <stdbool.h>

bool isLeapYear(int year);

int main() {

  // September, April, June and November are 30 days
  // January, March, May, July, August, October, December are 31 days

  // February has 28 days normally, but 29 days on leap years,
  // so we just adjust that position in the array when we increment the year

  int   days[] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

  // Jan 1, 1900 was Monday, and not a leap year, so Jan 1, 1901 is a Tuesday
  int year     = 1901;
  int month    = 1; // 1 - 12
  int day      = 1; // 1 - (28/29/30/31)
  int weekday  = 1; // 1 - 7, where 1 = Tuesday, 2 = Wednesday, etc.

  int total    = 0;

  while (true) {
    if (++weekday > 7)
      weekday = 1;

    if (++day > days[month]) {
      day = 1;

      if (++month > 12) {
        month = 1;

        if (++year > 2000)
          break;
        else if (isLeapYear(year))
          days[2] = 29;
        else
          days[2] = 28;
      }

      if (weekday == 6) // 6 is Sunday
        total++;

    }
  }

  printf("%d\n", total);

  return 0;
}

bool isLeapYear(int year) {
  if (year % 400 == 0)
    return true;
  else if (year % 100 == 0)
    return false;
  else if (year % 4 == 0)
    return true;
  return false;
}
