// Ejercicio 95: Calcular la suma de 2 matrices cuadradas de 3×3 (Diagrama N-S) .
Proceso Ejercicio95
    Definir a, b, c, i, j Como Entero;
    Dimension a[3,3];
    Dimension b[3,3];
    Dimension c[3,3];
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Leer a[i,j];
            Leer b[i,j];
            c[i,j] <- a[i,j] + b[i,j];
        FinPara
    FinPara
FinProceso