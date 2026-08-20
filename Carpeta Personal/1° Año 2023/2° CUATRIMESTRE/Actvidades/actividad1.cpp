#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n;
    
    cout << "Ingrese la cantidad de numeros enteros que desea almacenar: ";
    cin >> n;

    // Crear un vector para almacenar los números
    vector<int> numeros;

    // Pedir al usuario que ingrese los números y almacenarlos en el vector
    for (int i = 0; i < n; i++) {
        int numero;
        cout << "Ingrese el numero " << i + 1 << ": ";
        cin >> numero;
        numeros.push_back(numero);
    }

    // Calcular la suma de los valores
    int suma = 0;
    for (int i = 0; i < n; i++) {
        suma += numeros[i];
    }

    // Calcular el promedio
    double promedio = static_cast<double>(suma) / n;

    // Mostrar la suma y el promedio
    cout << "La suma de los numeros es: " << suma << endl;
    cout << "El promedio de los numeros es: " << promedio << endl;

    return 0;
}




//realizar un programa que almacene una n cantidad de numeros enteros en una arrays y mostrar por pantaña la suma de todo los valores de la arrays el promedio