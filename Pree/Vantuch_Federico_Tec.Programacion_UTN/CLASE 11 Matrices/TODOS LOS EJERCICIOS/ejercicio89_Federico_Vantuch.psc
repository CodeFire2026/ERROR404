// Ejercicio 89: Matriz 5×5 que almacene "1" en la diagonal principal y "0" en el resto (Diagrama N-S) .
Proceso Ejercicio89
    Definir m, i, j Como Entero;
    Dimension m[5,5];
    
    Para i <- 0 Hasta 4 Hacer
        Para j <- 0 Hasta 4 Hacer
            Si i = j Entonces
                m[i,j] <- 1;
            Sino
                m[i,j] <- 0;
            FinSi
        FinPara
    FinPara
    
    Para i <- 0 Hasta 4 Hacer
        Para j <- 0 Hasta 4 Hacer
            Escribir Sin Saltar m[i,j], " ";
        FinPara
        Escribir "";
    FinPara
FinProceso