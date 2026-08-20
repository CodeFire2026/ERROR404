#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main() {
    int filas = 4;
    int columnas = 3;
    int matriz[4][3];

    // Llenar la primera fila con valores ingresados por el usuario
    cout << "Ingrese 3 valores para la primera fila:" << endl;
    for (int c = 0; c < columnas; c++) {
        cin >> matriz[0][c];
    }

    // Llenar la segunda fila con numeros aleatorios entre 1 y 6
    srand(time(NULL)); //declarar la semilla 
    for (int c = 0; c < columnas; c++) {
        matriz[1][c] = rand() % 6 + 1;
    }

   	// Llenar la fila 3 como inversa de la fila 1
    for (int c = 0; c < columnas; c++) {
        matriz[2][c] = matriz[0][columnas - 1 - c];
    }
    // Llenar la fila 4 como inversa de la fila 2
    for (int c = 0; c < columnas; c++) {
        matriz[3][c] = matriz[1][columnas - 1 - c];
    }

    // Mostrar la matriz completada
    cout << "Matriz completa:" << endl;
    for (int f = 0; f < filas; f++) {
        for (int c = 0; c < columnas; c++) {
            cout << "[" << matriz[f][c] << "]";
        }
        cout << endl;
    }

    // Calcular y mostrar la suma de cada fila
    for (int f = 0; f < filas; f++) {
        int sumaFila = 0;
        for (int c = 0; c < columnas; c++) {
            sumaFila += matriz[f][c];
        }
        cout << "Suma de la fila " << f + 1 << ": " << sumaFila << endl;
    }

    // Calcular y mostrar la suma de cada columna
    for (int c = 0; c < columnas; c++) {
        int sumaColumna = 0;
        for (int f = 0; f < filas; f++) {
            sumaColumna += matriz[f][c];
        }
        cout << "Suma de la columna " << c + 1 << ": " << sumaColumna << endl;
    }

    return 0;
}

