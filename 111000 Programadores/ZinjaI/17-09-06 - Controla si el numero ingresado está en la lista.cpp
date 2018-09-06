#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;

int main(int argc, char *argv[]) {
	int num[10];
	int i=0;
	int num2;
	for(i=0; i<10; i++){
		num[i]=rand()%10+1;
		cout<< num[i]<< endl;
	}
	
	cout<<"\nEscribe el número que quieres ver si está en la lista\n";
	cin>>num2;
		i=0;
		int repetido=0;
	while (i<10 && repetido==0 ){
		if (num2==num[i]){
			repetido=1;
		}
			i++;
	}
	if (repetido==1)
		cout<<"\nEl número está en la lista";
	else
		cout<<"\nEl número es diferente a todos";
return 0;
}





/*
int i=0;
int N[10]=;

while(N[i]<N[i+1] && i<9)
cout<<N[1];
i++;
*/

