#include <iostream>

using namespace std;

int main() {
    char operador;
    double num1, num2;

    cout << "Bienvenido a la calculadora simple en C++" << endl;

    // Solicitar al usuario que ingrese los numeros y el operador
    cout << "Ingresa el primer numero: ";
    cin >> num1;

    cout << "Ingresa el operador (+, -, *, /): ";
    cin >> operador;

    cout << "Ingresa el segundo numero: ";
    cin >> num2;

    // Realizar la operación y mostrar el resultado
    switch (operador) {
        case '+':
            cout << "Resultado: " << num1 + num2 << endl;
            break;
        case '-':
            cout << "Resultado: " << num1 - num2 << endl;
            break;
        case '*':
            cout << "Resultado: " << num1 * num2 << endl;
            break;
        case '/':
            if (num2 != 0) {
                cout << "Resultado: " << num1 / num2 << endl;
            } else {
                cout << "Error: No es posible dividir por cero." << endl;
            }
            break;
        default:
            cout << "Operador no valido." << endl;
    }

    return 0;
}
