#include <iostream>
using namespace std;
int AA=0;
int aa=0;
int Aa=0;
int x=0;
int gen[1000000];
int total=0;
int generacion=1;

void PedirInformacion(){
	cout<<"¿Cuántos genes dominantes hay en la primera generación?\n";
	cin>> AA;
	cout<<"\n¿Cuántos genes recesivos hay en la primera generación?\n";
	cin>>aa;
	cout<<"\n¿Cuántas generaciones le gustaría analizar?\n";
	cin>>x;
	cout<<endl <<endl;
	
	total=AA+aa;
}
void AsignarGenes(){
// DOMINANTES
	for (int i=0; i<AA; i++)
		gen[i]=1;
// RECESIVOS
	for (int i=AA; i<(AA+aa); i++)
		gen[i]=2;
//MEZCLAS
	for (int i=(AA+aa); i<(total); i++)
		gen[i]=3;
}
void MostrarGenes(){
	cout<< "En la generación n° " <<generacion <<" hay:\nAA= " <<AA <<"\naa= " <<aa <<"\nAa= " <<Aa <<endl <<endl;	
	
}
void CambiarGeneracion(){
	for (int i=0; i<(total-1); i++){
		for (int j=i+1; j<(total); j++){
			if (gen[i]*gen[j]==1){
				AA=AA+1;}
			if (gen[i]*gen[j]==4){
				aa=aa+1;}
			if (gen[i]*gen[j]!=1&&gen[i]*gen[j]!=4){
				Aa=Aa+1;}
		}
	}
	generacion++;
}
int main(int argc, char *argv[]) {

	PedirInformacion();
	MostrarGenes();
	for (int i=1; i<x; i++){
		AsignarGenes();
		CambiarGeneracion();
		MostrarGenes();
	}
	
	return 0;
}

