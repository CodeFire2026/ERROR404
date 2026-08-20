// Ejercicio 84: Almacenar números en una matriz de 3×4 e imprimir la suma de los números pares (Pseudocódigo) .
Proceso Ejercicio84
    Definir m, i, j, suma Como Entero;
    Dimension m[3,4];
    
    suma <- 0;
    
    Para i <- 0 Hasta 2 Hacer
        Para j <- 0 Hasta 3 Hacer
            Leer m[i,j];
            
            Si m[i,j] MOD 2 = 0 Entonces
                suma <- suma + m[i,j];
            FinSi
        FinPara
    FinPara
    
    Escribir "Suma pares: ", suma;
FinProceso