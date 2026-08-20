// Ejercicio 94: Leer una matriz de 3×3 y crear su matriz traspuesta (Diagrama de flujo) .
Proceso Ejercicio94
    Definir a, t, i, j Como Entero;
    Dimension a[3,3];
    Dimension t[3,3];
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Leer a[i,j];
            t[j,i] <- a[i,j];
        FinPara
    FinPara
FinProceso