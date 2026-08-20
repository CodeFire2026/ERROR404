#include<iostream>
#include<ctime>
#include<cstdlib>

using namespace std;

int main()
{
    const int filas = 4;
    const int columnas = 3;
    int matriz[filas][columnas];

    for (int f = 0; f < filas; f++)
    {
        for (int c = 0; c < columnas; c++)
        {
            switch (f)
            {
            case 0:
                cout<<"ingrese un numero : ";
                cin>>matriz[f][c];
                break;
            
            case 1:
                matriz[f][c] = 1 + rand()%(6+1-1);
            break;

            case 2:
                matriz[f][c] = matriz[0][2-c];
            break;

            case 3:
                matriz[f][c] = matriz[1][2-c];
            break;
            }
        
            
        }
        
        
    }
    int suma= 0;
    for (int f = 0; f < filas; f++)
    {
        for (int c = 0; c < columnas; c++)
        {
            cout<<'['<<matriz[f][c]<<']';
            suma += matriz[f][c];
        }
    cout<<"<----"<<suma;
    cout<<endl;
    suma = 0;
    }
    
    for (int c = 0; c < columnas; c++)
    {
        for (int f = 0; f < filas; f++)
        {
           
            suma += matriz[f][c];
        }
       
        cout<<"La suma de las culumnas "<<c<<" es : "<<'['<<suma<<']'<<endl;;
        suma = 0;
    }
    return 0;
}