#include <iostream>
using namespace std;
int main()
{
    float costo = 0;
    int vidaUtil = 0;
    float valorRecuperacion = 0;
    int anio = 0;
    float depreciacion = 0;
    int acumulado = 0;
    cout << "Ingresar el costo = ";
    cin >> costo;
    cout << "ingresar la vida útil = ";
    cin >> vidaUtil;
    depreciacion = (costo - valorRecuperacion) / vidaUtil;
    do
    {
        acumulado = acumulado + depreciacion;
        costo = costo - depreciacion;
        anio = anio + 1;
        cout << endl
             << " Año " << anio
             << " Depreciación=" << depreciacion
             << " Depreciación acumulada=" << acumulado
             << " Valor anual=" << costo;
        cout << endl;
    } while (anio < vidaUtil);
}
