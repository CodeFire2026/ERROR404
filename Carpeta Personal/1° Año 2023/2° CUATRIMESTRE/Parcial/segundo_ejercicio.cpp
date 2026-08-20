// EJERCICIO N°2 
// Realizar un programa que llene una matriz de 4x3 con la fila 1 ingresada por teclado,la fila 2 con números aleatorios entre (1 y 6) y la fila 3 y 4 debe ser la inversa de las anteriores. 

#include <iostream>
#include <cstdlib>

int main() {
    const int filas = 4;
    const int columnas = 3;
    int matriz[filas][columnas];
    int sumaFila[filas] = {0};
    int sumaColumna[columnas] = {0};

    // Ingresar la fila 1 por teclado
    std::cout << "Ingrese los elementos de la fila 1 (3 elementos): ";
    for (int j = 0; j < columnas; j++) {
        std::cin >> matriz[0][j];
        sumaFila[0] += matriz[0][j];
        sumaColumna[j] += matriz[0][j];
    }

    // Generar la fila 2 con números aleatorios entre 1 y 6
    for (int j = 0; j < columnas; j++) {
        matriz[1][j] = rand() % 6 + 1;
        sumaFila[1] += matriz[1][j];
        sumaColumna[j] += matriz[1][j];
    }

    // Calcular las filas 3 y 4 como inversas de las anteriores
    for (int i = 2; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            matriz[i][j] = matriz[i - 2][j];
            sumaFila[i] += matriz[i][j];
            sumaColumna[j] += matriz[i][j];
        }
    }

    // Mostrar la matriz por pantalla
    std::cout << "Matriz 4x3:\n";
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            std::cout << matriz[i][j] << "\t";
        }
        std::cout << std::endl;
    }

    // Mostrar la suma de cada fila
    std::cout << "Suma de cada fila:\n";
    for (int i = 0; i < filas; i++) {
        std::cout << "Fila " << i + 1 << ": " << sumaFila[i] << std::endl;
    }

    // Mostrar la suma de cada columna
    std::cout << "Suma de cada columna:\n";
    for (int j = 0; j < columnas; j++) {
        std::cout << "Columna " << j + 1 << ": " << sumaColumna[j] << std::endl;
    }

    return 0;
}