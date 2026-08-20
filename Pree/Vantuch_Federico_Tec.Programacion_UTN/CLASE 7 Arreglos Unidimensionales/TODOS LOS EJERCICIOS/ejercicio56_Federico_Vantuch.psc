// Ejercicio 56: Leer 8 números en un arreglo y mostrarlos en orden: el primero, el último, el segundo, el penúltimo... (Diagrama de flujo) .
Proceso Ejercicio56
    Definir v, i Como Entero;
    Dimension v[8];
    
    Para i <- 0 Hasta 7 Hacer
        Leer v[i];
    FinPara
    
    Para i <- 0 Hasta 3 Hacer
        Escribir v[i];
        Escribir v[7-i];
    FinPara
FinProceso
