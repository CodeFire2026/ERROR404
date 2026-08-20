#include <iostream>
using namespace std;

int main() {
    float horas, precioHora, salario;
    string nombre;
    char masDatos;

    cout << "Introducir horas, precio hora y nombre" << endl;

    do {
        cout << "Nombre: ";
        cin >> nombre;

        cout << "Horas trabajadas: ";
        cin >> horas;

        cout << "Precio por hora: ";
        cin >> precioHora;

        if (horas <= 40) {
            salario = horas * precioHora;
        } else {
            salario = 40 * precioHora + 1.5 * (horas - 40) * precioHora;
        }

        cout << "Salario de " << nombre << ": " << salario << endl;

        cout << "Mas trabajadores S/N: ";
        cin >> masDatos;

    } while (masDatos == 'S' || masDatos == 's');

    return 0;
}