// Ejercicio 52: Crear arreglo de tamaño indicado por teclado, llenar con números aleatorios entre 1-100 y mostrarlos (Diagrama de flujo) .
Proceso Ejercicio52
    Definir n, i Como Entero;
    Definir v Como Entero;
    
    Escribir "Ingrese tamaño del arreglo: ";
    Leer n;
    
    Dimension v[100];  // tamaño fijo
    
    Para i <- 0 Hasta n-1 Hacer
        v[i] <- Aleatorio(1,100);
    FinPara
    
    Para i <- 0 Hasta n-1 Hacer
        Escribir v[i];
    FinPara
FinProceso