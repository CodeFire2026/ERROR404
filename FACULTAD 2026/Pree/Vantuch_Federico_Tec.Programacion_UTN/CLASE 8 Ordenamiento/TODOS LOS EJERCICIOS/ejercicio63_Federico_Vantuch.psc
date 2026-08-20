// Ejercicio 63: Ejemplo de Método de Inserción ascendente y descendente.
Proceso Ejercicio63
    Definir v, i, j, aux Como Entero;
    Dimension v[5];
    
    Para i <- 0 Hasta 4 Hacer
        Leer v[i];
    FinPara
    
    //  INSERCIÓN ASCENDENTE
    Para i <- 1 Hasta 4 Hacer
        aux <- v[i];
        j <- i - 1;
        
        Mientras j >= 0 Y v[j] > aux Hacer
            v[j+1] <- v[j];
            j <- j - 1;
        FinMientras
        
        v[j+1] <- aux;
    FinPara
    
    Escribir "Ascendente:";
    Para i <- 0 Hasta 4 Hacer
        Escribir v[i];
    FinPara
    
    // INSERCIÓN DESCENDENTE
    Para i <- 1 Hasta 4 Hacer
        aux <- v[i];
        j <- i - 1;
        
        Mientras j >= 0 Y v[j] < aux Hacer
            v[j+1] <- v[j];
            j <- j - 1;
        FinMientras
        
        v[j+1] <- aux;
    FinPara
    
    Escribir "Descendente:";
    Para i <- 0 Hasta 4 Hacer
        Escribir v[i];
    FinPara
FinProceso