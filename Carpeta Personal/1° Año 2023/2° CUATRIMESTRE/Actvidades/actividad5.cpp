/*hacer un program que llene dos  array de tamaño 7 y haga la suma de los elementos
y los guarde en un tercer array,*/
#include <iostream>
#include <stdlib.h>
#include <time.h>
using namespace std;
int main() {
    const int tamano = 7;
    int array1[tamano];
    int array2[tamano];
    int resultado[tamano];

    /* semilla para comenzar el generador de numero aleatorios / la funcion time(NULL)
    sirve para imprimir la hora, entonces cada vez que nosotros iniciemos el programa
    la hora va a cambiar al igual que nuestra semilla*/
    srand(time(NULL));

    /*Llenamos los 2 arrays de manera aleatoria, sin la funcion for se completan todos
    los espacios con 0 */
    for (int i = 0; i < tamano ; i++)
    {
    array1[i] = rand() % 100;
    array2[i] = rand() % 100;
    }
    for (int i = 0; i < tamano; i++) {
        resultado[i] = array1[i] + array2[i];
    }
    //Mismo procedimiento, sin la funcion for se me imprime solamente un numero/
    //Imprimimos los resultado usando for para que imprima los 7 resultados/
    cout << "Array 1: ";
    for (int i = 0; i < tamano; i++) {
        cout << array1[i] << " ";
    }
        cout <<endl;
/*----------------o---------------*/
        cout << "Array 2: ";
    for (int i = 0; i < tamano; i++) {
        cout << array2[i] << " ";
    }
        cout << endl;
/*---------------o---------------*/    
        cout << "Resultado: ";
    for (int i = 0; i < tamano; i++) {
        cout << resultado[i] << " ";
    }
        cout << endl;

 return 0;
}