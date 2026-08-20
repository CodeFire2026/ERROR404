// Ejercicio 79: Ingresar una frase y convertir el primer carácter de cada palabra de minúscula a mayúscula (Pseudocódigo) .
Proceso Ejercicio79
    Definir tex, resultado Como Caracter;
    Definir i Como Entero;
    
    Leer tex;
    resultado <- Mayusculas(Subcadena(tex,0,0));
    
    Para i <- 1 Hasta Longitud(tex)-1 Hacer
        Si Subcadena(tex,i-1,i-1)=" " Entonces
            resultado <- Concatenar(resultado, Mayusculas(Subcadena(tex,i,i)));
        Sino
            resultado <- Concatenar(resultado, Subcadena(tex,i,i));
        FinSi
    FinPara
    
    Escribir resultado;
FinProceso