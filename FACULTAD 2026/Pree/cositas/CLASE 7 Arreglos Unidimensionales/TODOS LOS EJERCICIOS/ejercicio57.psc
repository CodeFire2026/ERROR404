// Ejercicio 57: Leer 5 números reales e indicar si están ordenados de forma creciente, decreciente o desordenados (Diagrama N-S) .
Proceso Ejercicio57
    Definir v Como Real;
    Definir i Como Entero;
    Definir creciente, decreciente Como Logico;
    
    Dimension v[5];
    
    Para i <- 0 Hasta 4 Hacer
        Leer v[i];
    FinPara
    
    creciente <- Verdadero;
    decreciente <- Verdadero;
    
    Para i <- 0 Hasta 3 Hacer
        Si v[i] > v[i+1] Entonces
            creciente <- Falso;
        FinSi
        
        Si v[i] < v[i+1] Entonces
            decreciente <- Falso;
        FinSi
    FinPara
    
    Si creciente Entonces
        Escribir "Creciente";
    Sino
        Si decreciente Entonces
            Escribir "Decreciente";
        Sino
            Escribir "Desordenado";
        FinSi
    FinSi
FinProceso