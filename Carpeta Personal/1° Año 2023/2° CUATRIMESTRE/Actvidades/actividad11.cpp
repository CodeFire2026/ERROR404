#include <iostream>
#include <stdlib.h>
#include <ctime>
using namespace std;

int main () {
int lim_sup = 20;
int lim_inf = 1;
int tam_array = 10;
int lista [tam_array] = {0};
int aleatorio = 0;
bool interruptor = true;
int aux = 0;
int intercambio = 0;
int pasadas = 0; 
srand (time(NULL)); //Inicializar semilla
for (int i = 0; i < tam_array; i++){   //for que llena el vector con nimeros aleatorios
    aleatorio = lim_inf + rand () % (lim_sup -1 -lim_inf); 
    lista [i] = aleatorio;
    cout <<"[" << lista [i]<<"]";
}
    //metodo burbuja
    //for que indica la cantidad de pasadas
for (int i=0; (i<tam_array-1 && interruptor == true); i++){
    pasadas++;
    interruptor = false;
    //for que india la cantidad de comparaciones
    for (int j = 0; (j<tam_array-1-i); j++){
        if (lista [j] > lista [j+1]){
            //intercambio
            aux = lista [j];
            lista [j] = lista [j+1];
            lista [j+1] = aux;
            interruptor = true;
            intercambio++;
        }
    }
}
    cout <<endl<<endl; 
    for (int i=0; i<tam_array; i++){
        cout<< "["<<lista[i]<<"]";
    }
    cout<<endl<<"------------------------------------------------";
    cout <<endl<<endl<< "Cantidad de pasadas: "<<pasadas<<endl;
    cout <<"cantidad de intercambios: "<<intercambio<<endl;


  return(0);

}