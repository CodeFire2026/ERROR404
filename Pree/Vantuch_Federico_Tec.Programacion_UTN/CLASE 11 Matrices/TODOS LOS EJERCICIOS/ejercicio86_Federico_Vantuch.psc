// Ejercicio 86: En matriz 4×4, calcular la suma de cada fila y almacenarla en un arreglo, y la suma de cada columna en otro arreglo (Diagrama N-S) .
Proceso Ejercicio86
    Definir m, sf, sc, i, j Como Entero;
    Dimension m[4,4];
    Dimension sf[4];
    Dimension sc[4];
    
    Para i <- 0 Hasta 3 Hacer
        sf[i] <- 0;
        sc[i] <- 0;
    FinPara
    
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3 Hacer
            Leer m[i,j];
            sf[i] <- sf[i] + m[i,j];
            sc[j] <- sc[j] + m[i,j];
        FinPara
    FinPara
    
    Escribir "Sumas filas: ";
    Para i <- 0 Hasta 3 Hacer
        Escribir sf[i];
    FinPara
    
    Escribir "Sumas columnas: ";
    Para i <- 0 Hasta 3 Hacer
        Escribir sc[i];
    FinPara
FinProceso