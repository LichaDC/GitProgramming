#include <iostream>
using namespace std;
/*
recibimos dos numeros;
cant de horas trabajadas por empleado
antiguedadd de empoleado

el sueldo bruto es 120 por cada hora comun 150 por hora extra
hora extra es cuando es mas de 160 hs por mes
800 por cada 5 de antiguedadd
y 300 por cada año remanente

al sueldo bruto se le aplica una retencion del 20 por ciento hasta 18000
y el 24 por ciento si supera ese numeros
*/
int horas=0;
int anios=0;
int bruto=0;
int gananciaHoras=0;
int gananciaAnios=0;
int limpio=0;
int main(int argc, char *argv[]) {
	cout<<"Horas trabajadas por mes\n";
	cin>>horas;
	cout<<"Años de antigüedad\n";
	cin>>anios;
	

	bruto=120*horas+(anios/5)*4000+(anios%5)*300;

	if (horas<=160)
		gananciaHoras=120*horas;
	else
	gananciaHoras=120*horas+150*(horas-160);
	
	gananciaAnios=(anios/5)*4000+(anios%5)*300;
	
	cout<<"\nEl salario bruto es: $" <<bruto<<" de los cuales son:\n\n$" <<gananciaHoras <<" por las horas trabajadas.\ny\n$"
		<<gananciaAnios <<" por la antigüedad.";

	if (bruto<=18000)
		limpio=bruto*0.8;
	else
		limpio=bruto*0.76;
		
	cout<<"\n\n\nFinalmente, el sueldo neto del empleado es: $" << limpio;
	return 0;
}
