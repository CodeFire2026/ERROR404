//	Ejercicio 62: Ejemplo de Método de la Burbuja ascendente y descendente.
Proceso Ejercicio62
    Definir v, i, j, aux Como Entero;
    Dimension v[5];
    
    // Cargar datos
    Para i <- 0 Hasta 4 Hacer
        Leer v[i];
    FinPara
    
    // BURBUJA ASCENDENTE
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3-i Hacer
            Si v[j] > v[j+1] Entonces
                aux <- v[j];
                v[j] <- v[j+1];
                v[j+1] <- aux;
            FinSi
        FinPara
    FinPara
    
    Escribir "Ascendente:";
    Para i <- 0 Hasta 4 Hacer
        Escribir v[i];
    FinPara
    
    // BURBUJA DESCENDENTE
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3-i Hacer
            Si v[j] < v[j+1] Entonces
                aux <- v[j];
                v[j] <- v[j+1];
                v[j+1] <- aux;
            FinSi
        FinPara
    FinPara
    
    Escribir "Descendente:";
    Para i <- 0 Hasta 4 Hacer
        Escribir v[i];
    FinPara
FinProceso