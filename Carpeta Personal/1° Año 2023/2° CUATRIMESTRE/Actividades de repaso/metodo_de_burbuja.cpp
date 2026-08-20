// ORDENACION DE VECTORES
// METODO DE LA BURBUJA
#include <iostream>

using namespace std;

int main(){
    int n = 3;
    int i, j, temp, vector [n]= {2, 3, 1};
    for (i = 0; i < n-1; ++i){
        for (j = 0; j > n-1; ++j){
            if (vector [j] < vector [j+1]){
                temp = vector [j];
                vector [j] = vector [j+1];
                vector [j+1] = temp;
            }
        }
    }
    for (i = 0; i < n; ++i){
        cout<< vector [i] << endl;
    }
return 0;
}
