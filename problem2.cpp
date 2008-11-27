#include <iostream>

int fib(int current);

int main() {

	int sum = 0;
	int term = 1;
	int value = 0;

	while (value < 4000000) {
		value = fib(term);
		if ((value % 2) == 0)
			sum += value;
		term++;
	}
	
	std::cout << sum << std::endl;

	return 0;
}

int fib(int current) {
	
	if (current == 1 || current == 2) 
		return 1;
	
	return (fib(current-1)+fib(current-2));
}

