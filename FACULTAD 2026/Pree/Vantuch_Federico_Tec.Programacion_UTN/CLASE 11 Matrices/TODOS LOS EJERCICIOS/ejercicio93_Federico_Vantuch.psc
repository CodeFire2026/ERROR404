//Ejercicio 93: Llenar matriz con números aleatorios, copiarla y mostrarla en pantalla (Pseudocódigo) .

Proceso Ejercicio93
    Definir a, b, i, j Como Entero;
    Dimension a[3,3];
    Dimension b[3,3];
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            a[i,j] <- Aleatorio(1,10);
            b[i,j] <- a[i,j];
        FinPara
    FinPara
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Escribir Sin Saltar b[i,j], " ";
        FinPara
        Escribir "";
    FinPara
FinProceso