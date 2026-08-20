// Ejercicio 96: Determinar si una matriz cuadrada es simétrica o no (Pseudocódigo) .
Proceso Ejercicio96
    Definir m, i, j Como Entero;
    Definir sim Como Logico;
    Dimension m[3,3];
    
    sim <- Verdadero;
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Leer m[i,j];
        FinPara
    FinPara
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 2 Hacer
            Si m[i,j] <> m[j,i] Entonces
                sim <- Falso;
            FinSi
        FinPara
    FinPara
    
    Si sim Entonces
        Escribir "Simetrica";
    Sino
        Escribir "No simetrica";
    FinSi
FinProceso