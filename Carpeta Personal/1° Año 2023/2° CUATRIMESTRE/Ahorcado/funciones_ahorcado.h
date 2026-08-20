#include <iostream>
#include <cstdlib> //rand() // srand()
#include <ctime> // time()
using namespace std;

const char* palabras[] = {

    "Computador", "Mouse", "Monitor", "CPU", "Teclado", "Procesador",
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

int contarLetras(const char* palabras){

    int cont = 0;

   for(int i = 0; palabras[i] != '\0'; i++){
    cont++;
   }

   return cont;
}

void jugar(const char* palabras, int cantLetras){

    cout<<palabras<<endl;
    cout<<cantLetras;

    for(int i=0; i<cantLetras; i++){
        cout<<"_";
    }

    cout<<"Ingrese una letra: ";
    //cin>>
}