#include <iostream>
#include <ctime>
#include <cstdlib>
using namespace std;

void funcion(int*, int&, float&, int&, int&, int&);

// num1 [10] num2 [20] // main
// 0x100      0x101
// num1_f [10] num2_f [20] // suma
// 0x200       0x201

// num1 n1[10] num2 n2[20] // main
// 0x100    0x101
// 0x100 num1 n1 0x101 num2 n2
// num1 num2 // main
// n1 n2 // suma

int main(){

    srand(time(nullptr));
    int   _suma = 0;
    float _media = 0;
    int   _mayor = 0;
    int   _menor = 0;
    int   _tam = 10;

    int enteros[_tam];
    //Llenamos el array

    for(int i=0; i<_tam; i++){
        enteros[i] = 1 + rand() % (101-1);
    }

    funcion(enteros, _suma, _media, _mayor, _menor, _tam);

    // _tam [10] _suma [50] // main
    // t_array [10] s_array [50] // media

    cout<<"La suma de los valores en el array es: "<<_suma<<endl;
    cout<<"La media de los valores en el array es: "<<_media<<endl;
    cout<<"El numero mayor del array es: "<<_mayor<<endl;
    cout<<"El numero menor del array es: "<<_menor<<endl;
    cout<<endl;

    for(int i=0; i<_tam; i++){

        cout<<"["<<enteros[i]<<"]";
    }

    return 0;
}

void funcion(int* r_array, int& r_suma, float& r_media, int& r_mayor, int& r_menor, int& r_tam){

    r_menor = r_array[0];

    for(int i=0; i<r_tam; i++){

        r_suma += r_array[i]; //calc. suma
        r_media = static_cast<float>(r_suma) / static_cast<float>(r_tam); //calc. media

        if(r_array[i] > r_mayor)
            r_mayor = r_array[i]; //calc. mayor

        if(r_array[i] < r_menor)
            r_menor = r_array[i]; //calc. menor
    }
}