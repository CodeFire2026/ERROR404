// Ejercicio 61: Fusionar dos arreglos de 5 números enteros ordenados en un tercero, manteniendo el orden (Pseudocódigo) .  
Proceso Ejercicio61
    Definir a, b, c Como Entero;
    Definir i, j, k Como Entero;
    
    Dimension a[5];
    Dimension b[5];
    Dimension c[10];
    
    Para i <- 0 Hasta 4 Hacer
        Leer a[i];
    FinPara
    
    Para i <- 0 Hasta 4 Hacer
        Leer b[i];
    FinPara
    
    i <- 0;
    j <- 0;
    k <- 0;
    
    Mientras i < 5 Y j < 5 Hacer
        Si a[i] < b[j] Entonces
            c[k] <- a[i];
            i <- i + 1;
        Sino
            c[k] <- b[j];
            j <- j + 1;
        FinSi
        k <- k + 1;
    FinMientras
    
    Mientras i < 5 Hacer
        c[k] <- a[i];
        i <- i + 1;
        k <- k + 1;
    FinMientras
    
    Mientras j < 5 Hacer
        c[k] <- b[j];
        j <- j + 1;
        k <- k + 1;
    FinMientras
    
    Para i <- 0 Hasta 9 Hacer
        Escribir c[i];
    FinPara
FinProceso