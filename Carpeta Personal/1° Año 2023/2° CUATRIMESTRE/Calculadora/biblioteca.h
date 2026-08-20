#include <iostream>
#include "biblioteca.h"

using namespace std;

int mostrarMenu(){

    int op=0;

    cout<<"\n"
        <<"\t==========================================\n"
        <<"\t## CALCULADORA DE LINEA DE COMANDOS C++ ##\n"
        <<"\t## PROGRAMACION I - IES 9012            ##\n"
        <<"\t==========================================\n"
        <<"\n"
        <<"\t================== MENU ==================\n"
        <<"\t1.SUMA\n"
        <<"\t2.RESTA\n"
        <<"\t3.MULTIPLICACION\n"
        <<"\t4.DIVISION\n"
        <<"\t5.SALIR\n"
        <<"\t==========================================\n"
        <<"\tINGRESE UNA OPCION: ";
        cin>>op;
        cin.ignore(50, '\n'); //LA UTILIZAMOS PARA VACIAR EL BUFFER

        return op;
}

bool validarOpcion (int opcion) {
    if (opcion<1 || opcion>5){
        return false;
    } else{
        return true;
    }
}
float calcular(int op,float num1,float num2){
switch (op)
{
case 1:
 return num1+num2;
    break;
    case 2:
return num1-num2;
   break;
   case 3:
return num1*num2;
   break;
   case 4:
return num1/num2;
default:
return 000;
break;
}
}