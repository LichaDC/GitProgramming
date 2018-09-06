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
int j1num[3];
char j1palo[3];
int j2num[3];
char j2palo[3];
int extraN=0;
char extraP='z';
int i=0;
int j=0;
int lugar=0;
int j1=1;
int j2=2;
int x=0;
int y=0;
int aux=0;
int canto=0;
int envido=0;
int valorEnvido=0;
int flor=0;
int respuesta=0;
int valorTruco=0;
int truco=0;
int rtaEnvido=0;

void GENERAR(){
//GENERA NÚMEROS (4x 1,2,3,...,12)
	for (int j=0; j<4; j++){
		for (int i=0; i<12; i++){
			num[i+12*j]=i+1;
		}
	}	//GENERA PALOS (12x basto, copa, espada, oro)
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

void CORTAR(int x){
	for (j=0; j<x; j++){
		extraN=num[0];
		extraP=palo[0];
		for (i=0; i<47; i++){
			num[i]=num[i+1];
			palo[i]=palo[i+1];
		}
		num[47]=extraN;
		palo[47]=extraP;
	}
}

/* void MEZCLARv1(){
	srand(time(NULL));
	for (j=0; j<100; j++){
		x=rand()%48;
		extraN=num[x];
		extraP=palo[x];
		for (i=x; i<47; i++){
			num[i]=num[i+1];
			palo[i]=palo[i+1];
		}
		num[47]=extraN;
		palo[47]=extraP;
//CORTAR
		extraN=num[0];
		extraP=palo[0];
		for (i=0; i<47; i++){
			num[i]=num[i+1];
			palo[i]=palo[i+1];
		}
		num[47]=extraN;
		palo[47]=extraP;
	}
}
void REPARTIR(){
	for (i=0; i<3; i++){
		j1num[i]=num[i];
		j1palo[i]=palo[i];
		j2num[i]=num[i+3];
		j2palo[i]=palo[i+3];
	}	
}*/

void MEZCLARv2(){
	srand(time(NULL));
	for (i=0; i<100; i++){
		x=rand()%47;
		y=rand()%47;
		
		aux=num[x];
		num[x]=num[y];
		num[y]=aux;
		
		aux=palo[x];
		palo[x]=palo[y];
		palo[y]=aux;
	}
}

/*todo el resto de cosas
void CARTASJUGADOR1(){
	cout<<"\n\n\nTus cartas son:\n\n";
	for (int i=0; i<3; i++){
		cout<<j1num[i]<<" de ";
		if (j1palo[i]=='b')cout<<"Basto";
		if (j1palo[i]=='c')cout<<"Copa";
		if (j1palo[i]=='e')cout<<"Espada";
		if (j1palo[i]=='o')cout<<"Oro";
		cout<<endl;
	}
}

void CARTASJUGADOR2(){
	cout<<"\n\n\nLas cartas de tu rival son:\n\n";
	for (int i=0; i<3; i++){
		cout<<j2num[i]<<" de ";
		if (j2palo[i]=='b')cout<<"Basto";
		if (j2palo[i]=='c')cout<<"Copa";
		if (j2palo[i]=='e')cout<<"Espada";
		if (j2palo[i]=='o')cout<<"Oro";
		cout<<endl;
	}
}

void PUNTOSENVIDO(){
	if (j2palo[0]==j2palo[1])
		valorEnvido=20+j2num[0]+j2num[1];
		if (j2num[0]>9)
			valorEnvido=valorEnvido-10;
		if (j2num[1]>9)
			valorEnvido=valorEnvido-10;
	if (j2palo[0]==j2palo[2])
		valorEnvido=20+j2num[0]+j2num[2];
		if (j2num[0]>9)
			valorEnvido=valorEnvido-10;
		if (j2num[2]>9)
			valorEnvido=valorEnvido-10;
	if (j2palo[1]==j2palo[2])
		valorEnvido=20+j2num[1]+j2num[2];
		if (j2num[1]>9)
			valorEnvido=valorEnvido-10;
		if (j2num[2]>9)
			valorEnvido=valorEnvido-10;
	if (j2palo[0]==j2palo[1] && j2palo[1]==j2palo[2])
		flor=1;
}

void CANTAFLOR(){
	if (flor==1)
		cout<<endl<<endl<<"FLOR"<<endl;
}

void CANTAENVIDO(){
//DECIDE SI CANTAR ENVIDO O NO
	valorEnvido=0;
	envido=0;
	srand(time(NULL));
	x=rand()%100;
	if (valorEnvido>23){
		if (x<80)
			envido=1;
	}
	else{
		if (x<20)
			envido=1;
	}
	if (envido==1){
		cout<<endl<<endl<<"- ENVIDO\n"<<endl;
		cin>>rtaEnvido;
//CONTROLA QUE SEA UNA RESPUETA VÁLIDA
		while (rtaEnvido<0 || 4>rtaEnvido){
			cout<<"           +- Ingrese una respueta válida -+\n";
		}
//ANALIZA RESPUESTA
		if (rtaEnvido==0)
			cout<<"* No quiero\n";
		if (rtaEnvido==1){
			cout<<"* Quiero\n";
			MUESTRAENVIDO();
		}
		if (rtaEnvido==2){
			cout<<"* Envido";
		if (rtaEnvido==3)
			cout<<"* Real Envido\n";
		if (rtaEnvido==4)
			cout<<"* Falta envido";
			CANTAFALTAENVIDO();
	}
}
	
void CANTAREALENVIDO(){
	srand(time(NULL));
	x=rand()%100;
	if (valorEnvido>28){
		if (x<90)
			realenvido=1;
	}
	else{
		if (x<5)
			realenvido=1;
	}
	if (realenvido==1)
		cout<<endl<<endl<<"- FALTA ENVIDO\n"<<endl;
	cin>>rtaRealEnvido;
	
	while (rtaRealEnvido<0 || 2>rtaRealEnvido){
		cout<<"           +- Ingrese una respueta válida -+\n";
	}
	if (rtaRealEnvido==0)
		cout<<"* No quiero";
	if (rtaRealEnvido==1)
		cout<<"* Quiero";
	if 
}	
void CANTAFALTAENVIDO(){
	srand(time(NULL));
	x=rand()%100;
	if (valorEnvido>30){
		if (x<90)
			faltaenvido=1;
	}
	else{
		if (x<5)
			faltaenvido=1;
	}
	if (faltaenvido==1)
		cout<<endl<<endl<<"- FALTA ENVIDO\n"<<endl;
		cin>>rtaFaltaEnvido;

	while (rtaFaltaEnvido<0 || 1>rtaEnvido){
	cout<<"           +- Ingrese una respueta válida -+\n";
	}
	if (rtaFaltaEnvido==0)
		cout<<"* No quiero";
	if (rtaFaltaEnvido==1)
		cout<<"* Quiero";
}
void MUESTRAENVIDO(){
	cout<<endl<<"- Mis puntos para el envido son: "<<valorEnvido<<endl;
}

void ENVIDAZO(){
	PUNTOSENVIDO();
	CANTAFLOR();
	CANTAENVIDO();
	}

void PUNTOSTRUCO(){
	valorTruco=0;
	truco=0;
	for (i=0; i<3; i++){
		if (j2num[i]==4)
			valorTruco=valorTruco+4;
		if (j2num[i]==5)
			valorTruco=valorTruco+8;
		if (j2num[i]==6)
			valorTruco=valorTruco+12;
		if (j2num[i]==7)
			if (j2palo[i]=='c' || j2palo[i]=='b')
				valorTruco=valorTruco+14;
			if (j2palo[i]=='o')
				valorTruco=valorTruco+37;
			if (j2palo[i]=='e')
				valorTruco=valorTruco+38;
		if (j2num[i]==10)
			valorTruco=valorTruco+18;
		if (j2num[i]==11)
			valorTruco=valorTruco+22;
		if (j2num[i]==12)
			valorTruco=valorTruco+26;
		if (j2num[i]==1)
			if (j2palo[i]=='c' || j2palo[i]=='o')
				valorTruco=valorTruco+28;
			if (j2palo[i]=='b')
				valorTruco=valorTruco+39;
			if (j2palo[i]=='e')
				valorTruco=valorTruco+40;
		if (j2num[i]==2)
			valorTruco=valorTruco+32;
		if (j2num[i]==3)
			valorTruco=valorTruco+36;
	}
	
	srand(time(NULL));
	x=rand()%100;
	if (valorTruco>40){
		if (x<80)
			truco=1;
		else
			if (x<20)
				truco=1;
		}
}

void CANTATRUCO(){
	cout<<endl<<endl<<"- TRUCO"<<endl;
	cin>>respuesta;
	if (respuesta!=0)
		cout<<"* QUIERO, jugá"<<endl;
	else
		cout<<"* NO QUIERO"<<endl;
}

void TRUCAZO(){
	PUNTOSTRUCO ();
	if (truco==1)
		CANTATRUCO();	
}*/

int main(int argc, char *argv[]) {

	GENERAR ();
	MEZCLARv2 ();
	MOSTRAR();
/*REPARTIR();
CARTASJUGADOR1();
CARTASJUGADOR2();
PUNTOSENVIDO ();
ENVIDAZO();
TRUCAZO();
*/	
return 0;
}
/* VALORES NUMERICOS PARA CARTAS DE TRUCO
	04 4
	08 5
	12 6
	14 7c 7b
	18 10
	22 11
	26 12
	28 1c 1o
	32 2
	36 3
	37 7o
	38 7e
	39 1b
	40 1e
*/

	

//ABANDONADO PORQUE DESCUBRÍ QUE LLEBAVA MUCHO MÁS TRABAJO DEL IMAGINADO EN UN PRINCIO.
//A FINES EDUCATIVOS, FUE INTERSANTE, PERO NO VALE LA PENA SEGUIR
