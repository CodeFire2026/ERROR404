// Ejercicio 66: Ejemplo de Búsqueda Binaria con arreglo ordenado.
Proceso Ejercicio66
	Definir arreglo, inferior, superior, mitad, dato, i Como Entero;
    Definir encontrado Como Logico;
    Dimension arreglo[10];
    
    // 1. Cargar el arreglo con datos ordenados
    arreglo[0] <- 1; arreglo[1] <- 4; arreglo[2] <- 7; arreglo[3] <- 10;
    arreglo[4] <- 14; arreglo[5] <- 18; arreglo[6] <- 20; arreglo[7] <- 25;
    arreglo[8] <- 30; arreglo[9] <- 35;
    
    Escribir "Ingrese el numero a buscar: ";
    Leer dato;
    
    // 2. Inicializar variables de control
    inferior <- 0;
    superior <- 9;
    encontrado <- Falso;
    
    // 3. Proceso de búsqueda
    Mientras (inferior <= superior) Y (encontrado = Falso) Hacer
        mitad <- TRUNC((inferior + superior) / 2);
        
        Si arreglo[mitad] = dato Entonces
            encontrado <- Verdadero;
        Sino
            Si arreglo[mitad] > dato Entonces
                // Buscar en la mitad izquierda
                superior <- mitad - 1;
            Sino
                // Buscar en la mitad derecha
                inferior <- mitad + 1;
            FinSi
        FinSi
    FinMientras
    
    // 4. Mostrar resultados
    Si encontrado = Verdadero Entonces
        Escribir "Elemento encontrado en la posicion: ", mitad;
    Sino
        Escribir "El elemento no existe en el arreglo.";
    FinSi
FinProceso
