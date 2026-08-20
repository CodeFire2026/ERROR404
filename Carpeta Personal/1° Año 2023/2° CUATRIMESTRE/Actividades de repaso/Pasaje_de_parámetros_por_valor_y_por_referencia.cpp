// PASAJE DE PARAMETROS 
// SUPONGAMOS LA SIGUEINTE FUNCION

#include <stdint.h>

void cocYResto ( int num1, int num2, int*coc, int *res);

int main () {
    int a = 15, b=2, coc, res;

    cocYResto (a, b, &coc, &res);
    printf ( "%d, %d", coc, res);

    return 0;
}

void cocYResto ( int num1, int num2, int*coc, int *res) {
    *coc = num1 / num2;
    *res = num2 % num2;
}
