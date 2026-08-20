#include <iostream>
#include <cstdlib>

using namespace std;

int main(){
    //Variables locales
    int vector[10], Aux;
    float Suma= 0, Promedio= 0;

    //El usuario determina cada valor para el vector
    for(int i=0; i<10; i++){
        cout<<"Ingrese el valor del vector para la posicion ["<<i<<"]: ";
        cin>>vector[i];
    }

    //Se muestra por pantalla el vector
    cout<<"\nVector resultante: ";
    for(int i=0; i<10; i++){
        cout<<"["<<vector[i]<<"]";
    }

    //Se suma los elementos del vector y se muestra por pantalla
    for(int i=0; i<10; i++){
        Suma+= vector[i];
    }
    cout<<"\n\nLa suma total de los elementos es: "<<Suma;

    //Se saca el promedio de los valores del vector y se muestra por pantalla
    Promedio= Suma/10;
    cout<<"\n\nEl promedio de los valores del vector es: "<<Promedio;

    //Ordenar vector con el METODO BURBUJA
    for(int i=0; i<10-1; i++){
        for(int j=0; j<10-1-i; j++){
            if(vector[j]>vector[j+1]){
                Aux= vector[j];
                vector[j]= vector[j+1];
                vector[j+1]= Aux;
            }
        }
    }

    //Imprimir vector ordenado
    cout<<"\n\nVector ordenado de menor a mayor: ";
    for(int i=0; i<10; i++){
        cout<<"["<<vector[i]<<"]";
    }

    cout<<endl;

    system("pause");
    return 0;
}