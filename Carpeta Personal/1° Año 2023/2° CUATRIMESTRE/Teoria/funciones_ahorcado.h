#include <iostream>
#include <stdlib.h> //rand() // srand()
#include <time.h> // time() 
using namespace std;

const char* palabras[] = {
	
	"sol", "agua", "casa", "cielo",
	"flor", "luz", "mar", "piedra",
	"hoja", "mesa", "roca", "viento",
	"nieve", "campo", "rio", "camino",
	"paso", "mundo", "arte", "puerta",
	"forma", "noche", "papel", "dia",
	"vino", "fruta", "aire", "tren",
	"mano", "piso", "tierra", "fuego",
	"ciudad", "color", "gente", "pelo",
	"vida", "lago", "madera", "nube",
	"pena", "tubo", "moto", "pino",
	"luz", "roca", "hoja", "campo",
	"rio", "paso", "arte", "forma",
	"papel", "dia", "vino", "aire",
	"tren", "mano", "piso", "fuego",
	"ciudad", "color", "gente", "pelo",
	"vida", "lago", "madera", "nube",
	"pena", "tubo", "moto", "pino",
	"sol", "agua", "casa", "cielo",
	"flor", "mar", "piedra", "hoja",
	"mesa", "viento", "campo", "rio",
	"camino", "paso", "mundo", "puerta",
	"forma", "noche", "papel", "dia",
	"vino", "fruta", "aire", "tren",
	"mano", "piso", "tierra", "fuego",
	"ciudad", "color", "gente", "pelo",
	"vida", "lago", "madera", "nube",
	"pena", "tubo", "moto", "pino",
	"sol", "agua", "casa", "cielo",
	"flor", "luz", "mar", "piedra",
	"hoja", "mesa", "roca", "viento",
	"nieve", "campo", "rio", "camino",
	"paso", "mundo", "arte", "puerta",
	"forma", "noche", "papel", "dia",
	"vino", "fruta", "aire", "tren",
	"mano", "piso", "tierra", "fuego",
	"ciudad", "color", "gente", "pelo",
	"vida", "lago", "madera", "nube",
	"pena", "tubo", "moto", "pino",
	"sol", "agua", "casa", "cielo",

};

int mostrarBienvenida(){
	
	int opcion = 0;
	
	cout<<"\n\tBienvenido al juego del ahorcado"
		<<"\n\t1.Jugar"
		<<"\n\t2.Salir"
		<<"\n\tIngrese una opcion: ";
	
	cin>>opcion;
	
	return opcion;
}

bool validarOpcion(int opcion){
	if(opcion>0 and opcion<3)
		return true;
	else
		return false;
}

int numeroAleatorio(){
	
	int numero = 0;
	int cantPalabras = sizeof(palabras)/sizeof(palabras[0]);
	
	srand(time(NULL));
	
	
	numero = rand() % cantPalabras+1;
	
	return numero;
}

int contarLetras(const char* palabra){
	cout<<palabra;
}