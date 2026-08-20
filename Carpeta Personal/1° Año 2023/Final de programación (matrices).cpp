#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main(){
    //Variables locales
    int MatrizA[5][4], MatrizB[5][4];


    // Marque la semilla para generar números aleatorios
    srand(time(NULL));

    //Llenar la Matriz1 y Matriz2 con numeros aleatorio entre el 10 y el 40
    for(int i=0; i<5; i++){
        for(int j=0; j<4; j++){
            MatrizA[i][j]= 10+ rand()% (41-10);
            MatrizB[i][j]= 10+ rand()% (41-10);
        }
    }

    //Mostrar por pantalla la Matriz1
    cout<<"\n -Matriz A:\n";
    for(int i=0; i<5; i++){
        cout<<"\t";
        for(int j=0; j<4; j++){
            cout<<"["<<MatrizA[i][j]<<"]";
        }
        cout<<endl;
    }

    //Mostrar por pantalla la Matriz2
        cout<<"\n -Matriz B:\n";
    for(int i=0; i<5; i++){
        cout<<"\t";
        for(int j=0; j<4; j++){
            cout<<"["<<MatrizB[i][j]<<"]";
        }
        cout<<endl;
    }

}
