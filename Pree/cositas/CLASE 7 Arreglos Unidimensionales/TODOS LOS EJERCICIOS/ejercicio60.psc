//	Ejercicio 60: Eliminar un elemento en una posición dada (entre 0 y 4) en un arreglo de 5 elementos sin dejar huecos (Diagrama N-S) .
Proceso Ejercicio60
    Definir v, i, pos Como Entero;
    Dimension v[5];
    
    Para i <- 0 Hasta 4 Hacer
        Leer v[i];
    FinPara
    
    Escribir "Posición a eliminar (0-4): ";
    Leer pos;
    
    Para i <- pos Hasta 3 Hacer
        v[i] <- v[i+1];
    FinPara
    
    Para i <- 0 Hasta 3 Hacer
        Escribir v[i];
    FinPara
FinProceso
