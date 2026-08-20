// Ejercicio 88: Llenar matriz 4×4, almacenar la diagonal principal en un arreglo e imprimirlo (Diagrama de flujo) .
Proceso Ejercicio88
    Definir m, v, i, j Como Entero;
    Dimension m[4,4];
    Dimension v[4];
    
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3 Hacer
            Leer m[i,j];
        FinPara
    FinPara
    
    Para i <- 0 Hasta 3 Hacer
        v[i] <- m[i,i];
    FinPara
    
    Para i <- 0 Hasta 3 Hacer
        Escribir v[i];
    FinPara
FinProceso