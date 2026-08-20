// Ejercicio 87: En matriz 3×4, sumar columnas e imprimir qué columna tuvo la máxima suma y su valor (Pseudocódigo) .
Proceso Ejercicio87
    Definir m, sc, i, j, max, pos Como Entero;
    Dimension m[3,4];
    Dimension sc[4];
    
    Para j <- 0 Hasta 3 Hacer
        sc[j] <- 0;
    FinPara
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 3 Hacer
            Leer m[i,j];
            sc[j] <- sc[j] + m[i,j];
        FinPara
    FinPara
    
    max <- sc[0];
    pos <- 0;
    
    Para j <- 1 Hasta 3 Hacer
        Si sc[j] > max Entonces
            max <- sc[j];
            pos <- j;
        FinSi
    FinPara
    
    Escribir "Columna mayor: ", pos, " Suma: ", max;
FinProceso