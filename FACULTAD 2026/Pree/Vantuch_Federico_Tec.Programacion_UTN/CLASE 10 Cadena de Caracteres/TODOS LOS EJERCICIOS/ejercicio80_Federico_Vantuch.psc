// Ejercicio 80: Sustituir todos los espacios en blanco de una frase por asteriscos (*) (Diagrama de flujo).
Proceso Ejercicio80
    Definir tex, nuevo Como Caracter;
    Definir i Como Entero;
    
    Leer tex;
    nuevo <- "";
    
    Para i <- 0 Hasta Longitud(tex)-1 Hacer
        Si Subcadena(tex,i,i)=" " Entonces
            nuevo <- Concatenar(nuevo,"*");
        Sino
            nuevo <- Concatenar(nuevo,Subcadena(tex,i,i));
        FinSi
    FinPara
    
    Escribir nuevo;
FinProceso