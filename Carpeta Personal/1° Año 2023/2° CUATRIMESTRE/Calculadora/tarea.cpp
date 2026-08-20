 #include <iostream>
 // andersan & para pasar direccion de variable;
 void funcion(int&, int&);
 using namespace std;
 int main () {
    int numero1, numero2;
    funcion (numero1,numero2); //paso por valor;
    funcion (numero1,numero2); //paso por direccion referida;
    cout<<&numero1; //imprime la direccion donde se almasena;
 }
void funcion (int &numero1, int &numero2){

}