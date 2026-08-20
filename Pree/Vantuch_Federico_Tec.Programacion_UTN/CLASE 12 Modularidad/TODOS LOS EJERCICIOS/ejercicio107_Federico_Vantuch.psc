// Ejercicio 106: Pedir 5 apellidos, almacenarlos en un arreglo y mostrarlos ordenados alfabéticamente (Diagrama de flujo) .
Proceso  Ejercicio106
    Definir apellidos Como Cadena;
    Dimension apellidos[5];
    Definir i, j Como Entero;
    Definir auxiliar Como Cadena;
    
    // 1. Lectura de datos (de 0 a 4 son 5 elementos)
	Para i <- 0 Hasta 4 Hacer
		Escribir "Ingrese el apellido ", i + 1, ":";
		Leer apellidos[i];
	FinPara
	
	// 2. Ordenamiento (el límite j+1 no debe pasar de 4)
	Para i <- 0 Hasta 3 Hacer
		Para j <- 0 Hasta 3 Hacer
			Si apellidos[j] > apellidos[j+1] Entonces
				auxiliar <- apellidos[j];
				apellidos[j] <- apellidos[j+1];
				apellidos[j+1] <- auxiliar;
			FinSi
		FinPara
	FinPara
    
    // 3. Mostrar resultados
    Escribir "";
    Escribir "Apellidos ordenados alfabéticamente:";
    Para i <- 0 Hasta 4 Hacer
        Escribir i, ". ", apellidos[i];
    FinPara
    
FinProceso
