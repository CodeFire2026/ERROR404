#include <iostream>
#include <ctime>
#include <cstdlib>
using namespace std;


int main(){

    srand(time(0));
    int matriz[5][5] = {0};
    bool repetido = false;
    int numero = 0;

    for(int fila=0; fila<5; fila++){
        for(int col=0; col<5; col++){
            repetido = false;
            numero = 1 + rand() % (25+1-1);
            //RECORRE MATRIZ EN BUSCA DE REPETIDO
            for(int fila2=0; fila2<5; fila2++){
                for(int col2=0; col2<5; col2++){
                    if(matriz[fila2][col2] == numero){
                        repetido = true;
                    }
                }
            }

            if(repetido == true){
                col--;
            }else{
                matriz[fila][col] = numero;
                cout<<"["<<matriz[fila][col]<<"]";
            }
        }

        cout<<endl;
 
  }

  return 0;
}