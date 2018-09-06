/*
	-Crear matriz tridimencional con la lluvia 4 semanas durante 3 meses por 5 años
*/

#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;
int lluvia[3][4][5];

void GENERAR(){
	srand(time(NULL));
	for (int x=0; x<3; x++){
		for (int y=0; y<4; y++){
			for (int z=0; z<5; z++){
				lluvia[x][y][z]=rand()%100;
			}
		}
	}
}
void MOSTRARMATRIZ(int z){
	cout<<"La matriz del año n°"<<z+1<<":\n\n";
	for (int x=0; x<3; x++){
		for (int y=0; y<4; y++){
			cout<<lluvia[x][y][z];
			if (y<3)
				cout<<"--";
		}
		cout<<endl;
	}
}
void MOSTRARTODASLASMATRICES(){
	for (int z=0; z<5; z++){
		MOSTRARMATRIZ(z);
		cout<<endl;
	}
}
int main(int argc, char *argv[]) {
	GENERAR();
	MOSTRARTODASLASMATRICES();
	return 0;
}
