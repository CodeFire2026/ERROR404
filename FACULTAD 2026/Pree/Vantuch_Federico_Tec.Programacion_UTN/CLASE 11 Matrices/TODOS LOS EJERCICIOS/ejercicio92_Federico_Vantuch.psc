//	Ejercicio 92: Llenar matriz entera de 2×2 y copiar su contenido a otra matriz (Diagrama N-S) .
Proceso Ejercicio92
    Definir a, b, i, j Como Entero;
    Dimension a[2,2];
    Dimension b[2,2];
    
    Para i <- 0 Hasta 1 Hacer
        Para j <- 0 Hasta 1 Hacer
            Leer a[i,j];
            b[i,j] <- a[i,j];
        FinPara
    FinPara
FinProceso