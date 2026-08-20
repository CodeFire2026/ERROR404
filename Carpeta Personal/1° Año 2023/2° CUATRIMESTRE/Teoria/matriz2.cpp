#include <iostream>
#include <thread>
#include <chrono>
#include <cstdlib>

int main()
{
	const int filas = 4;
	const int columnas = 3;
	
	int matriz[filas][columnas] = {0};
	//    #0 #1 #2
	// #0 1  2  3
	// #1 5  6  7
	// #2 0  8  8
	// #3 0  9  9
	
	// Llenamos la matriz	
	for(int c=0; c<columnas; c++){
		std::cout<<"Ingrese un numero: ";
		std::cin>> matriz[0][c];
		matriz[1][c] = 1+rand()%(6+1-1);
	}
	
	for(int c=0; c<columnas; c++){
		matriz[2][c] = matriz[0][2 - c];
		matriz[3][c] = matriz[1][2 - c];
	}
	///////////////////////////////////////////////////////
	std::cout<<std::endl;
	
	// imprimo la matriz
	int sumaFilas = 0;
	
	for(int f=0; f<filas; f++){
		for(int c=0; c<columnas; c++){
			sumaFilas += matriz[f][c];
			
			std::cout<<"["<<matriz[f][c]<<"]";
			std::this_thread::sleep_for(std::chrono::seconds(1));
		}
		std::cout<<" - suma de la fila: "<<sumaFilas;
		sumaFilas = 0;
		std::cout<<std::endl;
	}
	
	int sumaCol = 0;
	std::cout<<std::endl;
	for(int c=0; c<columnas; c++){
		for(int f=0; f<filas; f++){
			sumaCol += matriz[f][c];
		}
		std::cout<<"suma de la columna "<<c<<": "<<sumaCol<<std::endl;
		sumaCol = 0;
	}
	
	
	
	return 0;
}