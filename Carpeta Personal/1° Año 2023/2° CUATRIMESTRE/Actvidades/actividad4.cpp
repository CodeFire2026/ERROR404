#include <iostream>

int main() {
    // Crear las dos primeras arrays con 7 elementos cada una
    int array1[7] = {1, 2, 3, 4, 5, 6, 7};
    int array2[7] = {8, 9, 10, 11, 12, 13, 14};

    // Crear una tercera array para almacenar la suma de las dos primeras
    int array3[7];

    // Realizar la suma de las dos primeras arrays y almacenar el resultado en la tercera array
    for (int i = 0; i < 7; i++) {
        array3[i] = array1[i] + array2[i];
    }

    // Imprimir las tres arrays
    std::cout << "Array 1: ";
    for (int i = 0; i < 7; i++) {
        std::cout << array1[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "Array 2: ";
    for (int i = 0; i < 7; i++) {
        std::cout << array2[i] << " ";
    }
    std::cout << std::endl;

    std::cout << "Array 3 (resultado de la suma): ";
    for (int i = 0; i < 7; i++) {
        std::cout << array3[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
