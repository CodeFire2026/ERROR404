// Ejercicio 73: Diseñe un programa que permita ingresar una cadena de caracteres y detecte cuántas vocales tiene (Pseudocódigo).
Proceso Ejercicio73
    Definir tex Como Caracter;
    Definir i, contador Como Entero;
    
    Leer tex;
    contador <- 0;
    
    Para i <- 0 Hasta Longitud(tex)-1 Hacer
        Si Subcadena(tex,i,i)="a" O Subcadena(tex,i,i)="e" O Subcadena(tex,i,i)="i" O Subcadena(tex,i,i)="o" O Subcadena(tex,i,i)="u" Entonces
            contador <- contador + 1;
        FinSi
    FinPara
    
    Escribir "Vocales: ", contador;
FinProceso