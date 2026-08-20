// Ejercicio 76: Eliminar los espacios en blanco de un texto (Pseudocódigo).
Proceso Ejercicio76
    Definir tex, nuevo Como Caracter;
    Definir i Como Entero;
    
    Leer tex;
    nuevo <- "";
    
    Para i <- 0 Hasta Longitud(tex)-1 Hacer
        Si Subcadena(tex,i,i) <> " " Entonces
            nuevo <- Concatenar(nuevo, Subcadena(tex,i,i));
        FinSi
    FinPara
    
    Escribir nuevo;
FinProceso