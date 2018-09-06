#include <iostream>
using namespace std;
int Suma1=0,Suma2,Num=0,CantN=0,Cant1=0,Cant2=0;
int main(int argc, char *argv[]) 
{
	cout<<"Cuántos números quiere sumar?\n";
	cin>>CantN;
	for(int i=1;i<=CantN;i++)
	{
		cout<<"Ingresivo el número "<<i<<"\n";
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
	cout<<"La suma de todos los "<<Cant2<<" números pares es: "<<Suma2<<"\n";
	cout<<"La suma de todos los "<<Cant1<<" números impares es: "<<Suma1<<"\n";
	return 0;
}

