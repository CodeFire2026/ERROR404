//funcion que va a calcular
//suma, media, mayor y menor de un array de int
#include <iostream>
#include <ctime>
#include <cstdlib>
using namespace std;

int suma(int*, int);
float media (int, int);
int mayor(int*, int);
int menor(int*, int);

int principal(){
	srand(time(nullptr));
	int _suma = 0;
	float _media = 0;
	int _mayor = 0;
	int _menor = 0;
	int _tam = 5;
	
	int enteros[_tam];
	//llenamos el array
	for (int i = 0; i < _tam; i++)
	{
		
	}
	(int i=0; i<_tam; i++) {
		enteros[i] = 1+rand()%(101-1);
	}
	
	_suma = suma(enteros, _tam);
	_media = media(_tam, _suma);
	_mayor = mayor(enteros, _tam);
	_menor = menor(enteros, _tam);
	
	cout<<"La suma de los valores en el array es: "<<_suma<<endl;
	cout<<"La media de los valores en el array es: "<<_media<<endl;
	cout<<"El número mayor del array es: "<<_mayor<<endl;
	cout<<"El número menor del array es: "<<_menor<<endl;
	cout<<endl;
	for (int i=0; i<_tam; i++){
		cout<<"["<<enteros[i]<<"]";
	}
	
	return 0;
}

int suma(int* matriz, int t_array){
	int _suma = 0;
	
	for (int i=0; i<t_array; i++){
		_suma += matriz[i];
	}
	
	return _suma;
}

float media (int t_array, int s_array) {
	float _media = static_cast<float>(s_array)/static_cast<float>(t_array);
	return _media;	
}

int mayor(int* matriz, int t_array){
	int mayor = 0;
	for (int i=0; i<t_array; i++){
		if (matriz[i] > mayor){
			mayor = matriz[i];
		}
	}
	
	return mayor;
}

int menor(int* matriz, int t_array){
	int menor = matriz[0];
	for (int i=0; i<t_array; i++){
		if (matriz[i] < menor){
			menor = matriz[i];
		}
	}
	
	return menor;
}