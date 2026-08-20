#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;
int main(){
	srand(time(0));
	const int tam = 10;
	int vector[tam] = {0};
	int num = 0;
	bool band = false;
	cout<<endl;
	//#0  #1  #2  #3  #4  #5
	//   [15] > [5] //[20] //[12] //[8]
	
	for(int i=0; i<tam; i++){
		band = false;
		num = 1+rand()%(12+1-1);
		// x recorre el vector en busca del numero
		for(int x=0; x<i; x++){
			if(vector[x] == num){
				band = true;
			}
		}
		
		if(band == false){
			vector[i] = num;
			cout<<"["<<vector[i]<<"]";
		}else{
			i--;
		}
	}
	
	// metodo burbuja
	int aux = 0;
	for(int i=0; i<tam-1; i++){
		for(int c=0; c<tam-1-i; c++){
			if(vector[c] > vector[c+1]){
				aux = vector[c];
				vector[c] = vector[c+1];
				vector[c+1] = aux;
			}
		}
	}
	cout<<endl;
	for(int i=0; i<tam; i++){
		cout<<"["<<vector[i]<<"]";
	}
	
	
	return 0;
}