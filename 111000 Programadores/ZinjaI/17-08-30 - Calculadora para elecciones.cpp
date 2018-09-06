#include <iostream>
using namespace std;

int main(int argc, char *argv[]) {
	cout<<"SE DEBE CALCULAR QUÉ PARTIDOS PASARON LAS ELEECIONES 'PASO'\n\n";
	cout<<"Escriba los números de los 4 partidos.\n";

	int listas[4];
for (int i=0; i<4; i++){
	cout<<"El partido n° "<< i+1<< " es:\n";
	cin>>listas[i];
}	

int votos[4];
int cantVotos=0;
for (int i=0; i<4; i++){
	cout<<"¿Cuántos votos tuvo el partido "<< listas[i]<< "?\n";
	cin>>votos[i];
	cantVotos=cantVotos+votos[i];
}

int porcentaje[4];
for (int i=0; i<4; i++){
	porcentaje[i]=100*votos[i]/cantVotos;
}
cout<<"La cantidad total de votos es "<< cantVotos<< "\n\n";
for (int i=0; i<4; i++){
	cout<<"El porcentaje de votos del partido "<< listas[i]<< " es: "<< porcentaje[i]<< "%\n";
}
	return 0;
}

