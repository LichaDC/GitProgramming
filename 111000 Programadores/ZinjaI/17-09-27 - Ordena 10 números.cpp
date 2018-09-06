/*
	- Generar un vector con 10 números entre 0 y 100
	- Mostrar dicho vector
	- Ordenarlo
	- Mostrarlo nuevamente
*/
// -------------------------------------------------------------------------
#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;

//VARIABLES
int num[10];	
int i=0;
int j=0;
int menor=0;
int posmenor=0;
int aux=0;

//MUESTRA 10 NUM DE UN VECTOR
void MOSTRAR(int x[]){
	for (i=0; i<10; i++){
		cout<<x[i]<<" - ";
	}
	cout<<endl<<endl;
}

//ORDENA 10 NUM DE UN VECTOR -v1-
/*void ORDENAR(int x[]){
	for (i=0; i<9; i++){
		menor=x[i];
		for (j=i+1; j<10; j++){
			if (x[j]<menor){
				menor=x[j];
				posmenor=j;
			}
		}
		aux=num[i];
		num[i]=menor;
		num[posmenor]=aux;
	}
}
*/

//ORDENA 10 NUM DE UN VECTOR -v2-
void ORDENAR (int x[]){
	i=0;
	while (i<9){
		if (x[i]>x[i+1]){
			aux=x[i];
			x[i]=x[i+1];
			x[i+1]=aux;
			i=0;
		}	
		else{
			i++;
		}
	}
}

int main(int argc, char *argv[]) {
	
//10 NÚMEROS AL AZAR
	srand(time(NULL));
	for (int i=0; i<10; i++){
		num[i]= rand()%100;
	
	}
	
//MUESTRA EL VECTOR
	cout<<"Los números DESORDENADOS son:"<<endl;
	MOSTRAR (num);
	
//ORDENA EL VECTOR
	ORDENAR (num);
	
//MUESTRA EL VECTOR
	cout<<"Los números ORDENADOS son:"<<endl;
	MOSTRAR (num);
		
	return 0;
}



