//?	Ejercicio 59: Leer 5 números crecientes en un array de tamaño 6. Leer un número N e insertarlo manteniendo el orden (Diagrama de flujo) .
Proceso Ejercicio59
    Definir v, i, n Como Entero;
    Dimension v[6];
    
    Para i <- 0 Hasta 4 Hacer
        Leer v[i];
    FinPara
    
    Escribir "Ingrese número a insertar: ";
    Leer n;
    
    i <- 4;
    
    Mientras i >= 0 Y v[i] > n Hacer
        v[i+1] <- v[i];
        i <- i - 1;
    FinMientras
    
    v[i+1] <- n;
    
    Para i <- 0 Hasta 5 Hacer
        Escribir v[i];
    FinPara
FinProceso
