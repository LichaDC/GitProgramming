#include <iostream>
#include<time.h>
#include<stdlib.h>
using namespace std;

int n[1000][1000];
int x=0;
int y=0;
int main(int argc, char *argv[]) {
	
	for (int i=0; i<=1000; i++){
		for (int j=0; j<=1000; j++){
			n[i][j]=-1;
		}
	}

	for (int i=0; i<=1000; i++){
		n[i-(i/4)*2][i-((i+2)/4)*2]=i;
	}
	
	while(true){
		cout<<"X = ";
		cin>>x;
		cout<<"\nY = ";
		cin>>y;
		
		if (x<0||x>1000 || y<0||y>1000)
			cout<<"\nInvalid\n";
		else if (n[x][y]==-1)
			cout<<"\nNo Number\n";
			else
				cout<<"\nEl punto es: " <<n[x][y] <<endl;
		cout<<endl <<endl;
	}
	return 0;
}
