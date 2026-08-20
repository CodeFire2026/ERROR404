// Ejercicio 53: Crea un arreglo unidimensional con un tamaño de 5 (reales), preguntar valores y calcular suma y promedio (Pseudocódigo) .

Proceso Ejercicio53
    Definir v, suma, promedio Como Real;
    Definir i Como Entero;
    
    Dimension v[5];
    suma <- 0;
    
    Para i <- 0 Hasta 4 Hacer
        Escribir "Ingrese número: ";
        Leer v[i];
        suma <- suma + v[i];
    FinPara
    
    promedio <- suma / 5;
    
    Escribir "Suma: ", suma;
    Escribir "Promedio: ", promedio;
FinProceso