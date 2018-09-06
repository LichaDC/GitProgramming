#include <iostream>
using namespace std;

/*
	recibis informacion diaria de hora de entrada y salida de empleados
	- hora entrada
	- min entrada
	- hora salida
	- min salida
	Tenés que calcular cuántas horas trabajó
*/

int horaIn[31];
int minutsIn[31];
int horaOut[31];
int minutsOut[31];
int i=0;
int totalMinutsMes=0;
int totalHorasMes=0;

int main(int argc, char *argv[]){
	
//VUELVE TODOS LOS VALORES 0
	for (i=0; i<31; i++){
		horaIn[i]=0;
		minutsIn[i]=0;
		horaOut[i]=0;
		minutsOut[i]=0;
	}
	
// EJEMPLOS PARA PROBAR EL PROGRAMA
		horaIn[0]=2;
		minutsIn[0]=2;
		horaOut[0]=4;
		minutsOut[0]=4;
		horaIn[1]=2;
		minutsIn[1]=2;
		horaOut[1]=4;
		minutsOut[1]=4;
	
//MINUTOS TOTALES POR MES
	for (i=0; i<31; i++){
		totalMinutsMes= totalMinutsMes+horaIn[i]*60+minutsIn[i];
		cout<<totalMinutsMes<< endl;
	}
	
//HORAS TOTALES POR MES REDONDEADAS
	if (totalMinutsMes%60<=30)
		totalHorasMes=totalMinutsMes/60;
	else
		totalHorasMes=(totalMinutsMes/60)+1;
	
//MUESTRA EL RESULTADO
	cout<<"\nLa cantidad de horas finales trabajadas son: " <<totalHorasMes <<"hs.\n";
return 0;
}

	
