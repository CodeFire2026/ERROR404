// Ejercicio 54: Crea un arreglo con "N" caracteres, leer por teclado y mostrarlos en orden inverso (Diagrama N-S) .
Proceso Ejercicio54
    Definir v Como Caracter;
    Definir i, n Como Entero;
    
    Escribir "Ingrese cantidad: ";
    Leer n;
    
    Dimension v[100]; // tamaño fijo
    
    Para i <- 0 Hasta n-1 Hacer
        Leer v[i];
    FinPara
    
    Para i <- n-1 Hasta 0 Con Paso -1 Hacer
        Escribir v[i];
    FinPara
FinProceso