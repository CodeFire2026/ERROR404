//  Ejercicio 102: Pedir un nombre y desplegarlo rodeado por la misma cantidad de asteriscos que los caracteres que tiene. La cantidad de asteriscos debe ser la misma que los caracteres en el nombre incluido espacios (Pseudocódigo) .
Proceso Ejercicio102
    Definir nombre Como Cadena;
    Definir i, tamano Como Entero; // Cambiamos "longitud" por "tamano"
    
    Escribir "Ingrese su nombre: ";
    Leer nombre;
    
    tamano <- Longitud(nombre); // Aquí usamos la función del sistema
    
    // Línea de asteriscos superior
    Para i <- 1 Hasta tamano Hacer
        Escribir Sin Saltar "*";
    FinPara
    
    Escribir ""; // Salto de línea
    Escribir nombre;
    
    // Línea de asteriscos inferior
    Para i <- 1 Hasta tamano Hacer
        Escribir Sin Saltar "*";
    FinPara
    
    Escribir ""; // Salto de línea final
FinProceso