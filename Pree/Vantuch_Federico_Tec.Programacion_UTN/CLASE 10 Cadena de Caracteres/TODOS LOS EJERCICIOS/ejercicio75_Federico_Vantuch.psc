// Ejercicio 75: Generar una cadena de entrada repetida N veces (Diagrama N-S) .
Proceso Ejercicio75
    Definir tex, resultado Como Caracter;
    Definir n, i Como Entero;
    
    Leer tex;
    Leer n;
    
    resultado <- "";
    
    Para i <- 1 Hasta n Hacer
        resultado <- Concatenar(resultado, tex);
    FinPara
    
    Escribir resultado;
FinProceso