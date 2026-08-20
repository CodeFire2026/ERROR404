// Ejercicio 65: Ejemplo de Búsqueda Secuencial con arreglo desordenado.
Proceso Ejercicio65
    Definir v, i, n, dato Como Entero;
    Definir encontrado Como Logico;
    
    Dimension v[5];
    
    // Cargar arreglo
    Para i <- 0 Hasta 4 Hacer
        Leer v[i];
    FinPara
    
    Escribir "Ingrese número a buscar: ";
    Leer dato;
    
    encontrado <- Falso;
    
    // Búsqueda secuencial
    Para i <- 0 Hasta 4 Hacer
        Si v[i] = dato Entonces
            encontrado <- Verdadero;
            Escribir "Encontrado en posición: ", i;
        FinSi
    FinPara
    
    Si NO encontrado Entonces
        Escribir "No se encontró";
    FinSi
FinProceso