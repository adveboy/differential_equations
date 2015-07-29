#include <iostream>

using namespace std;

void generate_next() {
	
}

bool test_i() {
	return true;
}

bool test_ii() {
	return true;
}

int[] generate_start(int[] prev) {
	//find average
	int len = (sizeof(prev)/sizeof(*prev));
	int near_opt[len + 1];
	int b = prev[len/2];
	near_opt[0] = b;
	for (int cnt = 1; cnt < len+1; cnt++) {
		near_opt[cnt] = b + prev[cnt-1]
	}
	return near_opt;
}

void print_array(int[] arr) {
	int len = (sizeof(prev)/sizeof(*prev));
	for (int cnt = 0; cnt < len; cnt++) {
		cout << arr[cnt] << " ";
	}
	cout << endl;
}

int main (int argc, char **argv) {
	/*
	cout << "koz" << endl;
	int lst = generate_start({2, 3, 4});
	print_array(lst);
	*/
	cout << "koz" << endl;
	return 0;
}


