#include <iostream>
using namespace std;

void cambio (int&, int&);

int main () {
    int x=25;
    int y=50;
    cout<<"valor de x: " <<x<<endl;
    cout<<"valor de y: " <<y<<endl;

    cambio (x,y);

    cout <<"se ejecuto la funcion" << endl;

     cout<<"valor de x: "  <<x <<endl;
     cout<<"valor de y: "  <<x <<endl;

    return 0;
}
void cambio (int &x, int &y){
    int temp=x;
    x= y;
    y= temp;
} 
