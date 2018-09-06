/*
	- Generar matriz de lluvias semanales durante 3 meses.
	-Calcular
		* Lluvia total de cada mes
		* Qué mes llovío más
		* Total de lluvia
		* Promedio de lluvia mensual
		* Día más lluvioso del mes
		* Día más lluvioso de todos
	- Crear un hacer una matriz tridimencional para que te permita también poner años
*/

#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;
int x=0;
int y=0;
int iuvias[3][4];

void GENERAR(){	
	srand(time(NULL));
	for (int x=0; x<3; x++){
		for (int y=0; y<4; y++){
			iuvias[x][y]=rand()%100;
				if (iuvias[x][y]<10)
					iuvias[x][y]=iuvias[x][y]*10;
		}
	}
}
void ESCRIBIR(){
	for (int x=0; x<3; x++){
		for (int y=0; y<4; y++){
			cout<<"Escriba las lluvias del mes "<<x+1<<" de las semana "<<y+1<<endl;
			cin>>iuvias[x][y];
		}
	}
}
void VERMATRIZ(){
	cout<<"LA MATRIZ ES:\n\n";
	for (int x=0; x<3; x++){
		for (int y=0; y<4; y++){
			cout<<iuvias[x][y];
			if (y<3)
				cout<<"--";
		}
		cout<<endl<<endl;
	}
}

int LLUVIADELMES(int x){
	int suma=0;
	for (y=0; y<3; y++){
		suma=suma+iuvias[x][y];
	}
	return suma;
}

int MESMASLLUVIOSO(){
	int mayor=0;
	if (LLUVIADELMES(0)>LLUVIADELMES(1) && LLUVIADELMES(2))
		mayor=1;
	else	
		if (LLUVIADELMES(1)>LLUVIADELMES(2))
			mayor=2;
		else	
			mayor=3;
	return mayor;
}

void VERMESMASLLUVIOSO(){
	cout<<"El mes más lluvioso fue el mes n°"<<MESMASLLUVIOSO()<<endl<<endl<<endl;
}

int TOTALDELLUVIA(){
	int total=0;
	for (int i=0; i<3; i++)
		total=total+LLUVIADELMES(i);
	return total;
}

void VERTOTALDELLUVIA(){
	cout<<"El total de lluvia de todo el año es de "<<TOTALDELLUVIA()<<"mm.\n\n\n";
}

int PROMEDIOLLUVIAMENSUAL(int x){
	return LLUVIADELMES(x)/3;
}

void VERPROMEDIOLLUVIAMENSUAL(){
	for (int i=0; i<3; i++)
		cout<<"El promedio de lluvia del mes n°"<<i<<" es de "<<PROMEDIOLLUVIAMENSUAL(i)<<"mm.\n";
	cout<<endl;
}

int SEMANAMASLLUVIOSADELMES(int x){
	if (iuvias[x][0]>iuvias[x][1] && iuvias[x][0]>iuvias[x][2] && iuvias[x][0]>iuvias[x][3])
		return 1;
	if (iuvias[x][1]>iuvias[x][2] && iuvias[x][1]>iuvias[x][3])
		return 2;
	if (iuvias[x][2]>iuvias[x][3])
		return 3;
	else
		return 4;
}

void VERSEMANAMASLLUVIOSADELMES(){
	for (int i=0; i<3; i++)
		cout<<"La semana que más llovió en el mes n°"<<i+1<<" fue la semana n°"<<SEMANAMASLLUVIOSADELMES(i)<<endl;
	cout<<endl;
}

int SEMANAMASLLUVIOSADELANIO(){
	if (iuvias[0][SEMANAMASLLUVIOSADELMES(0)-1]>iuvias[1][SEMANAMASLLUVIOSADELMES(1)-1] && iuvias[0][SEMANAMASLLUVIOSADELMES(0)-1]>iuvias[2][SEMANAMASLLUVIOSADELMES(2)-1])
		return 1;
	if (iuvias[1][SEMANAMASLLUVIOSADELMES(1)-1]>iuvias[2][SEMANAMASLLUVIOSADELMES(2)-1])
		return 2;
	else
		return 3;
}
	
void VERSEMANAMASLLUVIOSADELANIO(){
	cout<<"La semana más lluviosa de todo el año fue la semana n°"<<SEMANAMASLLUVIOSADELMES(SEMANAMASLLUVIOSADELANIO());
	cout<<" del mes n°"<<SEMANAMASLLUVIOSADELANIO()<<endl<<endl;
}
int main(int argc, char *argv[]) {
GENERAR();
VERMATRIZ();
VERMESMASLLUVIOSO();
VERTOTALDELLUVIA();
VERPROMEDIOLLUVIAMENSUAL();
VERSEMANAMASLLUVIOSADELMES();
VERSEMANAMASLLUVIOSADELANIO();
	return 0;
}

