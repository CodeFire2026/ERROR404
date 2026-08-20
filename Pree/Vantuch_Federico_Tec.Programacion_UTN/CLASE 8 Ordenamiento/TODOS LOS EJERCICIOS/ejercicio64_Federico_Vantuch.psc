// Ejercicio 64: Ejemplo de Método de Selección ascendente y descendente.
Proceso Ejercicio64
    Definir v, i, j, pos, aux Como Entero;
    Dimension v[5];
    
    Para i <- 0 Hasta 4 Hacer
        Leer v[i];
    FinPara
    
    // ELECCIÓN ASCENDENTE
    Para i <- 0 Hasta 3 Hacer
        pos <- i;
        
        Para j <- i+1 Hasta 4 Hacer
            Si v[j] < v[pos] Entonces
                pos <- j;
            FinSi
        FinPara
        
        aux <- v[i];
        v[i] <- v[pos];
        v[pos] <- aux;
    FinPara
    
    Escribir "Ascendente:";
    Para i <- 0 Hasta 4 Hacer
        Escribir v[i];
    FinPara
    
    //SELECCIÓN DESCENDENTE
    Para i <- 0 Hasta 3 Hacer
        pos <- i
        
        Para j <- i+1 Hasta 4 Hacer
            Si v[j] > v[pos] Entonces
                pos <- j;
            FinSi
        FinPara
        
        aux <- v[i];
        v[i] <- v[pos];
        v[pos] <- aux;
    FinPara
    
    Escribir "Descendente:";
    Para i <- 0 Hasta 4 Hacer
        Escribir v[i];
    FinPara
FinProceso