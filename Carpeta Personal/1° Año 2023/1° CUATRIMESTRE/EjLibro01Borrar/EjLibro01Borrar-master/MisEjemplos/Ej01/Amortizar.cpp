#include <iostream>
using namespace std;
int main()
{
    float costo = 0;
    int vidaUtil = 0;
    float valorRecuperacion = 0;
    int anio = 0;
    float depreciacion = 0;
    float acumulado = 0;
    cout << "Ingresar el costo = ";
    cin >> costo;
    cout << "Ingresar la vida útil = ";
    cin >> vidaUtil;
    cout << endl;
    depreciacion = (costo - valorRecuperacion) / vidaUtil;
    do
    {
        acumulado = acumulado + depreciacion;
        costo = costo - depreciacion;
        anio = anio + 1;
        cout << " Año " << anio
             << " Depreciación=" << depreciacion
             << " Depreciación acumulada=" << acumulado
             << " Valor anual=" << costo;
        cout << endl;
    } while (anio < vidaUtil);
}
