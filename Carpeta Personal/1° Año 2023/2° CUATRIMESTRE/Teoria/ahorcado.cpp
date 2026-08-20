#include <iostream>
#include "funciones_ahorcado.h"
using namespace std;

//mostrar cartel de bienvenida
//mostrar opciones 1 jugar 2 salir
//seleccionar una palabra al azar
//contar letras de la palabra
//mostrar los espacios de la palabra
//ingresar letras



int main(){
	
	int opcion = 0;
	const char* palabraGuardada = palabras[numeroAleatorio()];
	
	do{
		system("cls");
		opcion = mostrarBienvenida();
		if(!validarOpcion(opcion)){
			cout<<"'\n\tOpcion Invalida"
				<<"\n\tPresione enter para continuar..";
			getchar();getchar();
		}
	}while(!validarOpcion(opcion));
	
	if(opcion == 2){
		cout<<"\n\tSaliste del juego del ahorcado";
		return 0;
	}
	
	// JUGAR

	contarLetras(palabraGuardada);
	
	return(0);
}