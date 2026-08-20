#include <iostream>
#include <vector>

int main() {
    std::vector<int> secuencia = {5, 3, 0, 2, 4, 4, 0, 0, 2, 3, 6, 0, 2};
    int total_cero = 0;

    for (int numero : secuencia) {
        if (numero ==0) {
            total_cero++;
        }
    }
    
    std::cout <<"El numero de ceros en la secuencia es: " << total_cero << std::endl;

    return 0;
}