#include <iostream>
using namespace std;
int Suma1=0,Suma2,Num=0,CantN=0,Cant1=0,Cant2=0;
int main(int argc, char *argv[]) 
{
	cout<<"Cu�ntos n�meros quiere sumar?\n";
	cin>>CantN;
	for(int i=1;i<=CantN;i++)
	{
		cout<<"Ingresivo el n�mero "<<i<<"\n";
		cin>>Num;
			if(Num%2==0)
				{
				Suma2=Suma2+Num;
				Cant2++;
				}
			else
				{
					Suma1=Suma1+Num;
					Cant1++;
				}
	}
	cout<<"La suma de todos los "<<Cant2<<" n�meros pares es: "<<Suma2<<"\n";
	cout<<"La suma de todos los "<<Cant1<<" n�meros impares es: "<<Suma1<<"\n";
	return 0;
}

