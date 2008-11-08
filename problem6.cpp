#include <iostream>

int main() {
	
	int difference = 0;
	int sumSq = 0;
	int sqSum = 0;
	
	for (int i = 1; i <= 100; i++) {
		sumSq += (i*i);
		sqSum += i;
	}

	sqSum = sqSum*sqSum;
	
	difference = sumSq - sqSum;

	std::cout << difference << std::endl;

	return 0;
}

