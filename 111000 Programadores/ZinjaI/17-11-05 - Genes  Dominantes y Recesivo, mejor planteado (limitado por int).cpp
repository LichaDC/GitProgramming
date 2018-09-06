#include <iostream>
using namespace std;
int AA=0;
int aa=0;
int Aa=0;
int cantGeneraciones=0;
int generacion=0;
void PedirInformacion(){
	cout<<"¿Cuántos genes DOMINANTES hay en la primera generación?\n";
	cin>>AA;
	cout<<"¿Cuántos genes RECESIVOS hay en la primera generación?\n";
	cin>>aa;
	cout<<"¿Cuántas generaciones quisiera analizar?\n";
	cin>>cantGeneraciones;
	cout<<endl;
}
void CambiarDeGeneracion(){
	int sumaAA=0;
	int sumaaa=0;
	int total=AA+aa+Aa;
// AA
	for (int i=1; i<AA; i++){
		sumaAA=sumaAA+i;
	}
	AA=AA+sumaAA;
// aa
	for (int i=1; i<aa; i++){
		sumaaa=sumaaa+i;
	}
	aa=aa+sumaaa;
// Aa
	for (int i=1; i<total; i++){
		Aa=Aa+i;
	}
	Aa=Aa-sumaAA-sumaaa;
}
void MostrarGeneracion(){
	float total=AA+aa+Aa;
	float perCentAA=(AA/total)*100;
	float perCentaa=(aa/total)*100;
	float perCentAa=(Aa/total)*100;
	cout<<"GENERACION N° " <<generacion <<endl
		<<"AA= " <<AA <<" - % " <<perCentAA <<endl
		<<"aa= " <<aa <<" - % " <<perCentaa <<endl
		<<"Aa= " <<Aa <<" - % " <<perCentAa <<endl <<endl;
}
int main(int argc, char *argv[]) {
	PedirInformacion();
	for (generacion=1; generacion<cantGeneraciones+1; generacion++){
		MostrarGeneracion();
		CambiarDeGeneracion();
	}
return 0;
}

