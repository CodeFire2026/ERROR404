#include <iostream>
#include <cstdlib>

int main() {
    const int tamanoVector = 10;
    int vector[tamanoVector];

    // Llenar el vector con números aleatorios entre 33 y 47
    for (int i = 0; i < tamanoVector; i++) {
        vector[i] = rand() % 15 + 33;
    }

    // Mostrar el vector con su representación ASCII
    std::cout << "Vector y su representación ASCII:\n";
    for (int i = 0; i < tamanoVector; i++) {
        std::cout << "Número: " << vector[i] << ", Representación ASCII: " << static_cast<char>(vector[i]) << "\n";
    }

    return 0;
}
