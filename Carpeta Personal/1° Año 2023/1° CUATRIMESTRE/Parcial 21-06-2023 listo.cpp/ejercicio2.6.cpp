#include <iostream>

int main() 
{
    int dato, C = 0;
    float Media, S =0; 

    std::cout <<"Datos numéricos; para finalizar se introduce 0\n";

    do 
    {
        std::cin >>dato;

        if (dato != 0)
        {
            C++;
            S += dato;
        }
    }while (dato !=0);

    //Calcula la medida y la escribe 
    if (C > 0)
    {
       Media = S / C; 
       std::cout << Media << std::endl;
    }

  return 0;
} 
    



