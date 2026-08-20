// Ejercicio 97: Producto de dos matrices cuadradas de 3×3 (Diagrama de flujo) .
Proceso Ejercicio97
    Definir a, b, c, i, j, k Como Entero;
    Dimension a[3,3];
    Dimension b[3,3];
    Dimension c[3,3];
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Leer a[i,j];
            Leer b[i,j];
            c[i,j] <- 0;
        FinPara
    FinPara
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Para k <- 0 Hasta 2 Hacer
                c[i,j] <- c[i,j] + a[i,k] * b[k,j];
            FinPara
        FinPara
    FinPara
FinProceso