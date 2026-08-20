// Ejercicio 78: Diseñar un algoritmo que tomando como entrada una cadena de texto nos devuelva si es o no un palíndromo. Se conoce que se denomina palíndromo a una palabra o frase que, ignorando los blancos, se lee igual de izquierda a derecha que de derecha a izquierda. (Diagrama N-S) .
Proceso Ejercicio78
    Definir tex, limpio, invertido Como Caracter;
    Definir i Como Entero;
    
    Leer tex;
    limpio <- "";
    
    // quitar espacios
    Para i <- 0 Hasta Longitud(tex)-1 Hacer
        Si Subcadena(tex,i,i) <> " " Entonces
            limpio <- Concatenar(limpio, Subcadena(tex,i,i));
        FinSi
    FinPara
    
    invertido <- "";
    
    Para i <- Longitud(limpio)-1 Hasta 0 Con Paso -1 Hacer
        invertido <- Concatenar(invertido, Subcadena(limpio,i,i));
    FinPara
    
    Si limpio = invertido Entonces
        Escribir "Es palindromo";
    Sino
        Escribir "No es palindromo";
    FinSi
FinProceso