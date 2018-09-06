/*
	- Generar un maso de 48 cartas españolas (sin comodín) que esté formada por dos vectores:
		* Número
		*Palo
	- Cortar el maso
	- Mezclar el maso
	- Repartir cartas a dos jugadores
*/	
// ---------------------------------------------------------------------------------------
#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;

int num[48];
char palo[48];
int i=0;
int j=0;
void GENERAR(){
//GENERA NÚMEROS (4x 1,2,3,...,12)
	for (int j=0; j<4; j++){
		for (int i=0; i<12; i++){
			num[i+12*j]=i+1;
		}
	}
//GENERA PALOS (12x basto, copa, espada, oro)
	for (int i=0; i<48; i++){
		palo[i]='b';
		if (i>12)palo[i]='c';
		if (i>24)palo[i]='e';
		if (i>36)palo[i]='o';
	}
}

void MOSTRAR(){
	cout<<"Las cartas del maso son:\n\n";
	for (int i=0; i<48; i++){
		cout<<num[i]<<" de ";
		if (palo[i]=='b')cout<<"Basto";
		if (palo[i]=='c')cout<<"Copa";
		if (palo[i]=='e')cout<<"Espada";
		if (palo[i]=='o')cout<<"Oro";
		cout<<"."<<endl;
	}
}
int main(int argc, char *argv[]) {

	GENERAR ();
	MOSTRAR ();
	
return 0;
}

