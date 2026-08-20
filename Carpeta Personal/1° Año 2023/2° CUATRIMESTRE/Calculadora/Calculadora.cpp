#include <iostream>

using namespace std;

int mostrarMenu ();
bool validarOpcion(int);
float calcular (int op,float num1,float num2);

int main (){
float num1, num2;
    int opcion = 0;
    
    do{
        system ("cls");
        opcion = mostrarMenu();
        if (!validarOpcion(opcion)){ //! ES USADO PARA NEGAR LA CONDICION
            cout<<"\n\a\tLA OPCION INGRESADA NO ES VALIDA\n"
                <<"\tPresione ENTER para continuar...";
            getchar(); //LA UTILIZAMOS PARA REALIZAR UNA PAUSA
        } else{
            if (opcion !=5)
            {
                  cout<<"\n\tIngrese el primer numero:";
cin>>num1;
           cout<<"\n\tIngrese el segundo numero:";
cin>>num2;
cout<<"'\n\tEl resultado de la operacion es:"<<calcular(opcion,num1,num2);
     //\n\t salto de linea;
getchar();getchar();// se colocan dos getchar(()) para borrar caracteres de enter;
            }
        }
        
    } while (opcion !=5);

return 0;
}

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