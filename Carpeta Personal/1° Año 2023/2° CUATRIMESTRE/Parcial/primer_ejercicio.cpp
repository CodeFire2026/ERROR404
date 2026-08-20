//EJERCICIO N°1
//Realizar un programa que llene un vector de dimensión 10 con números enteros obtenidos al azar entre 1 y 12 (sin repetir números) 
#include <iostream>
#include <ctime>
#include <cstdlib>

int main() {
    const int tamanoVector = 10;
    int vector[tamanoVector];

    // Comienzo hacer la semilla para generar números aleatorios
    srand(time(0));

    // Hago que  el vector con números aleatorios sin repetir
    for (int i = 0; i < tamanoVector; i++) {
        int numeroAleatorio;
        bool repetido;
        do {
            repetido = false;
            numeroAleatorio = rand() % 12 + 1;
            for (int j = 0; j < i; j++) {
                if (vector[j] == numeroAleatorio) {
                    repetido = true;
                    break;
                }
            }
        } while (repetido);
        vector[i] = numeroAleatorio;
    }

    // Mostrar el vector original
    std::cout << "Vector original: ";
    for (int i = 0; i < tamanoVector; i++) {
        std::cout << vector[i] << " ";
    }
    std::cout << std::endl;

    // Ordenar el vector de menor a mayor 
    for (int i = 0; i < tamanoVector - 1; i++) {
        for (int j = i + 1; j < tamanoVector; j++) {
            if (vector[i] > vector[j]) {
                int temp = vector[i];
                vector[i] = vector[j];
                vector[j] = temp;
            }
        }
    }

    // Mostrar el vector ordenado
    std::cout << "Vector ordenado: ";
    for (int i = 0; i < tamanoVector; i++) {
        std::cout << vector[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}