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
    cout << "Ingresar el costo = ";
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

    cout << "ingresar la vida útil = ";
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
      }catch(const exception &e) {
        cout << endl << "Error de ejecución, el programa terminará. Código de error: " << e.what() << endl;
        exit(1);
      }
    }while(tecladoError);
    tecladoError=true;
    //Fin otra forma de controlar la entrada por teclado. ///////  
    
    depreciacion = (costo - valorRecuperacion) / vidaUtil;
    do
    {
        acumulado = acumulado + depreciacion;
        costo = costo - depreciacion;
        anio = anio + 1;
        cout << " |Año " << setw(2) << anio
             << " |Depreciación=" << setw(9) << setprecision(2) << fixed << depreciacion
             << " |Depreciación acumulada=" << setw(9) << setprecision(2) << fixed << acumulado
             << " |Valor anual=" << setw(9) << setprecision(2) << fixed << costo << endl;
    } while (anio < vidaUtil);
    cout << "El programa ha terminado." << endl;
    return 0;
}
