//LIBRERIAS
#include <iostream>
#include <ctime>

using namespace std;

int main(){

//VARIABLES
srand(time(NULL));
int tam_vector = 10;
int vector[tam_vector];
int suma = 0;

//SALTO DE LINEA
cout<<endl;

//LLENAR EL VECTOR CON NUMEROS ALEATORIOS ENTRE 33 Y 47 Y CON UNA VARIABLE TIPO CHAR LAS LETRAS EN ASCII
for(int i=0; i<tam_vector; i++){
  vector[i] = rand() % 15 + 33;
  suma += vector[i];
  char letra = vector[i];

  //IMPRIME EL VECTOR Y MUESTRA LOS NUMEROS COMO LA TABLA ASCII
  cout<<"["<<vector[i]<<"]"<<letra<<endl;
}

//IMPRIME LA SUMA DE LOS NUMEROS
cout<<endl;
cout<<"La suma es: "<<suma<<endl;
cout<<endl;

return(0);
}