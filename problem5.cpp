#include <iostream>

int main() {
	
	bool good = false;
	long counter = 20;

	while (!good && counter < 2000000000) {
		counter ++;
		good = true;
		for (long i = 1; i <= 20; i++) {
			if ((counter % i) != 0)
				good = false;
		}
	}

	std::cout << counter << std::endl;

	return 0;
}

