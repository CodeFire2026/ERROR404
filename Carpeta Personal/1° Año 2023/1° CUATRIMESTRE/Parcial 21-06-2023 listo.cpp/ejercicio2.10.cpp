#include <iostream>
using namespace std;

int main() {
    int numero, total = 0;
    char mas_Datos;

    cout << "Cuenta de ceros" << endl;

    mas_Datos = 's';
    while (mas_Datos == 's' || mas_Datos == 'S') {
        cout << "Ingrese un numero: ";
        cin >> numero;

        if (numero == 0) {
            total++;
        }

        cout << "Desea ingresar mas numeros? (S/N): ";
        cin >> mas_Datos;
    }

    cout << "Total de ceros = " << total << endl;

    return 0;
}
