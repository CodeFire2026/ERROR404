#include <iostream>
using namespace std;

// Función para ordenar el array de mayor a menor usando el método de burbuja
void ordenarMayorAMenor(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (arr[j] < arr[j + 1]) {
                // Intercambiar los elementos si están en el orden incorrecto
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// Función para mostrar el array en pantalla
void mostrarArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;
}

int main() {

    // Crear un array de tamaño 10 y llenarlo con números aleatorios entre 1 y 20
    int array[10];
    for (int i = 0; i < 10; i++) {
        array[i] = std::rand() % 20 + 1;
    }

    // Mostrar el array original en pantalla
    std::cout << "Array original: ";
    mostrarArray(array, 10);

    // Ordenar el array de mayor a menor
    ordenarMayorAMenor(array, 10);

    // Mostrar el array ordenado de mayor a menor
    std::cout << "Array ordenado de mayor a menor: ";
    mostrarArray(array, 10);

    // Ordenar el array de menor a mayor
    for (int i = 0; i < 10 - 1; i++) {
        for (int j = 0; j < 10 - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                // Intercambiar los elementos si están en el orden incorrecto
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }

    // Mostrar el array ordenado de menor a mayor
    std::cout << "Array ordenado de menor a mayor: ";
    mostrarArray(array, 10);

    return 0;
}
