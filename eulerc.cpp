#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

double eulersMethod(int n, double a, double b, double alpha, ostream& output) {
	// local variables
	double h,x,w;
	// intialise values
	h = (b-a)/(double)(n);
	x = a;
	w = alpha;
	// implement Euler's method
	for(int i=0; i<n; i++) {
		x = a + i*h; // update value of x to x_i
		output << x << " , " << w << endl; // output x_i and w_i to screen
		// w = w + h*(x*exp(3*x)-2.*w); // update w to w_{i+1}
		w = w + h*(5*w - 3); // update w to w_{i+1}
	}
	output << b << " , " << w << endl; // output x_n and w_n to screen
	return w;
}

int main() {
	// output to screen
	eulersMethod(10000, 0., 2., 1, cout);
	// output to file
	ofstream myFileStream("test.csv");
	eulersMethod(1000, 0., 2., 0., myFileStream);
	myFileStream.close();
	return 0;
}