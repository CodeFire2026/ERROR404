#include <iostream>

using namespace std;

int main() {

    char caracter;
    bool datoValido = false;
    do {
        cout <<"ingrese un caracter: ";
        cin >> caracter;
        if(caracter < 'A' || (caracter > 'Z'&& caracter < 'a')|| caracter > 'z') {
            cout << "Error; el caracter ingresado es invalido." << endl;
        } else{
            datoValido = true;
            cout << "El valor ASCII del caracter " << caracter << "es" <<int(caracter) << "." << endl;
        }
    } while (!datoValido);
    return 0;
}