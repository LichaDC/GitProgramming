#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;

int iuvias[3][3];

void GENERAR(){	
	srand(time(NULL));
	for (int x=0; x<3; x++){
		for (int y=0; y<3; y++){
			iuvias[x][y]=rand()%100;
		}
	}
}
void ESCRIBIR(){
	for (int x=0; x<3; x++){
		for (int y=0; y<3; y++){
			cout<<"Escriba el número "<<x+1<<";"<<y+1<<endl;
			cin>>iuvias[x][y];
		}
	}
}
void MOSTRAR(){
	cout<<"\n\n\nLA MATRIZ ES:\n\n";
	for (int x=0; x<3; x++){
		for (int y=0; y<3; y++){
			cout<<iuvias[x][y];
			if (y<2)
				cout<<"--";
		}
		cout<<endl;
	}
}
int main(int argc, char *argv[]) {
GENERAR();
ESCRIBIR();
MOSTRAR();
	return 0;
}

