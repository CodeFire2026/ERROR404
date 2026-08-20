//	Ejercicios 67: Ejemplos: Longitud, Subcadena, Concatenar.
Proceso Ejercicio67
    Definir texto, sub, nuevo Como Caracter;
    
    texto <- "Hola Mundo";
    
    Escribir "Longitud: ", Longitud(texto);
    
    sub <- Subcadena(texto, 0, 3);
    Escribir "Subcadena: ", sub;
    
    nuevo <- Concatenar(texto, "!!!");
    Escribir "Concatenado: ", nuevo;
FinProceso