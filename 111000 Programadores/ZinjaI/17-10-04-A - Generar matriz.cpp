#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;

int iuvias[5][5];

void GENERAR(){	
	srand(time(NULL));
	for (int x=0; x<5; x++){
		for (int y=0; y<5; y++){
			iuvias[x][y]=rand()%100;
		}
	}
}

void MOSTRAR(){
	for (int x=0; x<5; x++){
		for (int y=0; y<5; y++){
			cout<<iuvias[x][y];
			if (y<4)
				cout<<"--";
		}
		cout<<endl;
	}
}
int main(int argc, char *argv[]) {
GENERAR();
MOSTRAR();

	return 0;
}

