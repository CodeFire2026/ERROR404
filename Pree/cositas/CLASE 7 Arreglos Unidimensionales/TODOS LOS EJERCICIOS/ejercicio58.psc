// Ejercicio 58: En un array de 6 elementos, desplazar una posición hacia abajo: el primero pasa a ser el segundo, y el último al primero (Pseudocódigo) .
Proceso Ejercicio58
    Definir v, i, aux Como Entero;
    Dimension v[6];
    
    Para i <- 0 Hasta 5 Hacer
        Leer v[i];
    FinPara
    
    aux <- v[5];
    
    Para i <- 5 Hasta 1 Con Paso -1 Hacer
        v[i] <- v[i-1];
    FinPara
    
    v[0] <- aux;
    
    Para i <- 0 Hasta 5 Hacer
        Escribir v[i];
    FinPara
FinProceso
