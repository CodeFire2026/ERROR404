#include <iostream>
#include <cstring>

using namespace std;

int main() {
    char cadena[100];
    bool datoValido = false;
    do {
        cout << "Ingrese una cadena: ";
        cin.getline(cadena, 100);
        int longitud = strlen(cadena);
        if(longitud == 0) {
            cout << "Error: la cadena no puede estar vacía." << endl;
        } else {
            datoValido = true;
            cout << "La cadena invertida es: ";
            for(int i = longitud-1; i >= 0; i--) {
                cout << cadena[i];
            }
        }
    } while(!datoValido);
    return 0;
}
