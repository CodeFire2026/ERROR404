// Ejercicio 90: Rellenar una matriz pidiendo al usuario filas y columnas, y mostrarla (Pseudocódigo) .
Proceso Ejercicio90
    Definir m Como Entero;
    Definir i, j, filas, columnas Como Entero;
    
    Dimension m[10,10];   // tamaño máximo
    
    Escribir "Ingrese cantidad de filas (max 10): ";
    Leer filas;
    
    Escribir "Ingrese cantidad de columnas (max 10): ";
    Leer columnas;
    
    // Cargar matriz
    Para i <- 0 Hasta filas-1 Hacer
        Para j <- 0 Hasta columnas-1 Hacer
            Escribir "Ingrese valor [", i, ",", j, "]: ";
            Leer m[i,j];
        FinPara
    FinPara
    
    // Mostrar matriz
    Escribir "Matriz ingresada: ";
    
    Para i <- 0 Hasta filas-1 Hacer
        Para j <- 0 Hasta columnas-1 Hacer
            Escribir Sin Saltar m[i,j], " ";
        FinPara
        Escribir "";
    FinPara
    
FinProceso