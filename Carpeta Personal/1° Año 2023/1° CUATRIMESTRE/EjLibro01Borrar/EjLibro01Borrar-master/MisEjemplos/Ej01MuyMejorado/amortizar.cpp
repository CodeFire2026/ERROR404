#include <iostream>
#include <iomanip>
#include <limits>
using namespace std;
int main()
{
    float costo = 0.0;
    int vidaUtil = 0;
    float valorRecuperacion = 0.0;
    int anio = 0;
    float depreciacion = 0.0;
    float acumulado = 0;
    bool tecladoError=true;
    cout << "\033[1;31m Ingresar el costo = \033[0m";
    //Control de error por teclado ////////////////
    do {
      cin >> costo; 
      if(cin.fail()) {
        cin.clear(); cin.ignore(numeric_limits<streamsize>::max(), '\n');
        cout << "Error de entrada, debe entrar un número = ";
      }else{
        tecladoError=false;
      }
    }while(tecladoError); 
    tecladoError=true;
    //Fin de control de error por teclado ///////////////////////

    cout << "\033[1;31m Ingresar la vida útil = \033[0m";
    //Otra forma de control de error por teclado ////////////////
    do {
      try {
       cin >> vidaUtil;
       if(cin.fail()) {
         cin.clear(); cin.ignore(numeric_limits<streamsize>::max(), '\n');
         cout << "Error de entrada, debe entrar un número = ";
       }else {
         tecladoError=false;
       }
      }catch(const exception& e) {
        cout << endl << "Error de ejecución, el programa terminará. Código de error: " << e.what() << endl;
        exit(1);
      }
    }while(tecladoError);
    tecladoError=true;
    //Fin otra forma de controlar la entrada por teclado. ///////  
    
    depreciacion = (costo - valorRecuperacion) / vidaUtil;

    cout << "|--------------------------------------------------------------------|" << endl;
    cout << "|Año       |Depreciación   |Depreciación acumulada   |Valor anual    |" << endl;
    cout << "|----------|---------------|-------------------------|---------------|" << endl;
    do
    {
        acumulado = acumulado + depreciacion;
        costo = costo - depreciacion;
        anio = anio + 1;
        cout << "|" << setw(10) << fixed << anio
             << "|" << setw(15) << setprecision(2) << fixed << depreciacion
             << "|" << setw(25) << setprecision(2) << fixed << acumulado
             << "|" << setw(15) << setprecision(2) << fixed << costo << "|" << endl;
    } while (anio < vidaUtil);
    cout << "|--------------------------------------------------------------------|" << endl;
    cout << "\033[1;34m El programa ha terminado. \033[0m" << endl;
    return 0;
}