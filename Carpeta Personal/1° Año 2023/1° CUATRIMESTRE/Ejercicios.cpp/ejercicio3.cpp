#include <iostream>

using namespace std;

int main() {
    int Vidautil =6, Anio =0;
    float Costo =0, Depreciacion =0, Valor_Recuperacion =0, Valor_Actual =0, Acumulado =0, Valor_Anual =0;
    cout << "Introduzca costo, Valor_Recuperacion y vida util ";
    cin >> Costo; //20000
    cin >> Valor_Recuperacion; //2000
    //cin >> Vidautil; //6
    //cout << "introduzca anio actual ";
    //cin >> anio;
    Valor_Actual = Costo;
    Depreciacion = (Costo - Valor_Recuperacion) / Vidautil;
    Acumulado =0;
    //cout << "Anio Depreciacion Dep. Acumulada ";
    while (Anio < Vidautil) {
        Acumulado = Acumulado + Depreciacion;
        Valor_Actual = Valor_Actual - Depreciacion;
        cout << (Anio, Depreciacion, Acumulado) << endl;
        Anio = Anio + 1;
    }
}

