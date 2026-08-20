//realizar un programa que almacene n cantidad de numeros enteros en una raid pero en el intervalo de los numeros desde del 1 al 3 y mostrar por pantaña cuantas veces se repite cada numeros

#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n;
    
    cout << "Ingrese la cantidad de numeros enteros que desea almacenar: ";
    cin >> n;

    // Crear un vector para almacenar los números en el intervalo [1, 3]
    vector<int> numeros;

    // Pedir al usuario que ingrese los números y verificar si están en el intervalo [1, 3]
    for (int i = 0; i < n; i++) {
        int numero;
        cout << "Ingrese el numero " << i + 1 << ": ";
        cin >> numero;

        if (numero >= 1 && numero <= 3) {
            numeros.push_back(numero);
        } else {
            cout << "El numero ingresado no esta en el intervalo [1, 3]. Intentelo de nuevo." << endl;
            i--; // Decrementamos i para que el usuario ingrese el número nuevamente.
        }
    }

    // Contar cuántas veces se repite cada número
    int contador1 = 0, contador2 = 0, contador3 = 0;
    for (int i = 0; i < numeros.size(); i++) {
        if (numeros[i] == 1) {
            contador1++;
        } else if (numeros[i] == 2) {
            contador2++;
        } else if (numeros[i] == 3) {
            contador3++;
        }
    }

    // Mostrar cuántas veces se repite cada número
    cout << "Cantidad de veces que se repite el numero 1: " << contador1 << endl;
    cout << "Cantidad de veces que se repite el numero 2: " << contador2 << endl;
    cout << "Cantidad de veces que se repite el numero 3: " << contador3 << endl;

    return 0;
}
