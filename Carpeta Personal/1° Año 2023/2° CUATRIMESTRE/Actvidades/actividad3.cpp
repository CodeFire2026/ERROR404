#include <iostream>
#include <vector>

int main() {
    int n;
    std::cout << "Ingrese la cantidad de números que desea almacenar en el arreglo: ";
    std::cin >> n;

    // Declarar el vector (equivalente a un array en C++)
    std::vector<int> numeros(n);

    // Pedir al usuario que ingrese los números y llenar el vector
    for (int i = 0; i < n; ++i) {
        std::cout << "Ingrese el número " << (i + 1) << ": ";
        std::cin >> numeros[i];
    }

    // Calcular la suma de los valores en el vector
    int suma = 0;
    for (int i = 0; i < n; ++i) {
        suma += numeros[i];
    }

    // Calcular el promedio
    double promedio = suma / static_cast<double>(n);

    // Mostrar la suma y el promedio por pantalla
    std::cout << "La suma de los números en el arreglo es: " << suma << std::endl;
    std::cout << "El promedio de los números en el arreglo es: " << promedio << std::endl;

    return 0;
}
