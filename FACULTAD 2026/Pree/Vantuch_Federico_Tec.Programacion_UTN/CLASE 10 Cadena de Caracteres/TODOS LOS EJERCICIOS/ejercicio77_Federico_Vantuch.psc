// Ejercicio 77: Cambiar una cadena de caracteres al revés (Diagrama de flujo).
Proceso Ejercicio77
    Definir tex, invertido Como Caracter;
    Definir i Como Entero;
    
    Leer tex;
    invertido <- "";
    
    Para i <- Longitud(tex-1 Hasta 0 Con Paso -1 Hacer
        invertido <- Concatenar(invertido, Subcadena(tex,i,i));
    FinPara
    
    Escribir invertido;
FinProceso