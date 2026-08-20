// Ejercicio 82: Contabilizar cuántas veces se repite una subcadena dentro de una frase (Pseudocódigo) .
Proceso Ejercicio82
    Definir tex, sub Como Caracter;
    Definir i, contador Como Entero;
    
    Leer tex;
    Leer sub;
    
    contador <- 0;
    
    Para i <- 0 Hasta Longitud(tex)-Longitud(sub) Hacer
        Si Subcadena(tex,i,i+Longitud(sub)-1)=sub Entonces
            contador <- contador + 1;
        FinSi
    FinPara
    
    Escribir "Veces:", contador;
FinProceso