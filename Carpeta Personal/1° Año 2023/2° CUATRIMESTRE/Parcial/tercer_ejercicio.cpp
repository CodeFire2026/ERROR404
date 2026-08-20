
#include <iostream>
#include <ctime>
#include <cstdlib>

int main() {
    const int tamanoVector = 10;
    int vector[tamanoVector];
    int suma = 0;

    // Marque la semilla para generar números aleatorios
    srand (time(NULL));

    // Llene el vector con números aleatorios entre 33 y 47
    for (int i = 0; i < tamanoVector; i++) {
        vector[i] = rand() % 15 + 33;
        suma += vector[i];
    }

    // Mostrar el vector por pantalla
    std::cout << "Vector de numero aleatorio: ";
    for (int i = 0; i < tamanoVector; i++) {
        std::cout << vector [i] << " ";
    }
    std::cout << std::endl;

    // Mostre la representación ASCII de cada número en el vector
    std::cout << "Vector y su representación ASCII: \n";
    for (int i = 0; i < tamanoVector; i++) {
        std::cout << "Numero: " << vector[i] << ", Representación ASCII: " << static_cast<char>(vector[i]) << "\n";
    }

}












