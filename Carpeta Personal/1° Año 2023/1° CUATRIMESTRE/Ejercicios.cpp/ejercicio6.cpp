#include <iostream>
using namespace std;

int horario (int);

    int main () 
{
    int hora=0;
    cout <<"ingrese hora" <<endl;
    cin>> hora; 
    int Bandera  = horario (hora);
    switch (Bandera)
  {
  case 0 :
    cout <<"Buenos dias";
    break;
  case 1 :
    cout <<"Buenas tardes";
  case 2 : 
    cout << " Buenas noches";
  case 3 : 
    cout << "No valido";  
  default:
    cout << "Error 0 x 810";
    break;
}
}
int horario (int hora){
    if (hora >=1 and hora <=24)
    {
    if (hora >=7 and hora <=12)
    {
        return 1;
    }
    if (hora >= 19 and hora <24 || hora >=1 and hora <=6)
    {
        return 2;
    } 
 
 }else{
   
    return 3;
  }
}
