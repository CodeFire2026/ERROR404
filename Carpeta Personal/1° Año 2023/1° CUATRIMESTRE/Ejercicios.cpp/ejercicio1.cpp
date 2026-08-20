#include <iostream>

using namespace std;

int main() {
    char caracter1 = 'a';
    char caracter2 = 'e';
    bool datoValido = false;
    do {
        cout << "Ingrese el primer caracter: ";
        cin >> caracter1;
        cout << "Ingrese el segundo caracter: "; 
        cin >> caracter2;
        if(caracter1 < 'A' || (caracter1 > 'Z' && caracter1 < 'a') || caracter1 > 'z' || caracter2 < 'A' || (caracter2 > 'Z' && caracter2 <'a') || caracter2 > 'z') {
            cout << "Error: los caracteres ingresados son invalidos." << endl;
        } else {
            datoValido = true;
            if(caracter1 < caracter2) {
                cout << "El caracter " << caracter2 << " es mayor que el caracter " << caracter1 << "." << endl;
            } else if(caracter1 > caracter2) {
                cout << "El caracter " << caracter1 << " es mayor que el caracter " << caracter2 << "." << endl;
            } else {
                cout << "Los caracteres son iguales." << endl;
            }
        }
    } while(!datoValido);
    return 0;
}