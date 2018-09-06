#include <iostream>
#include <time.h>
#include <stdlib.h>
using namespace std;
int lluvia[1][2][3];
int main(int argc, char *argv[]) {
	srand(time(NULL));
	lluvia[0][0][0]=rand()%100;
	cout<<lluvia[0][0][0];
	return 0;
}

