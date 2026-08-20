#include <iostream>
using namespace std;

int main() {
    int numero = 4;
    int Suma = 2;

    while (numero <= 100) {
        Suma += numero;
        numero += 2;
    }

    cout << "Suma pares entre 2 y 100 = " << Suma << endl;

    return 0;
}
