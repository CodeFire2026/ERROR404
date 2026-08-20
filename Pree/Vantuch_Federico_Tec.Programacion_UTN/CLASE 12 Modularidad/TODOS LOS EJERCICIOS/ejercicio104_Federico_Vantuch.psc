// Ejercicio 104: Programa para calcular el tipo de cambio de moneda al dólar y viceversa (Diagrama N-S) .
Proceso  Ejercicio104
    Definir opcion Como Entero;
    Definir cantidad, tasa, resultado Como Real;
    
    // En un escenario real, la tasa podría ser una constante o consultarse
    tasa <- 1.00; // Define aquí el valor del dólar en tu moneda local
    
    Escribir "--- CONVERSOR DE DIVISAS ---";
    Escribir "1. De Moneda Local a Dólares";
    Escribir "2. De Dólares a Moneda Local";
    Escribir "Seleccione una opción:";
    Leer opcion;
    
    Si opcion = 1 o opcion = 2 Entonces
        Escribir "Ingrese la cantidad a convertir:";
        Leer cantidad;
        
        Si opcion = 1 Entonces
            resultado <- cantidad / tasa;
            Escribir cantidad, " unidades locales equivalen a ", resultado, " USD.";
        Sino
            resultado <- cantidad * tasa;
            Escribir cantidad, " USD equivalen a ", resultado, " unidades locales.";
        FinSi
    Sino
        Escribir "Opción no válida.";
    FinSi
    
FinProceso
