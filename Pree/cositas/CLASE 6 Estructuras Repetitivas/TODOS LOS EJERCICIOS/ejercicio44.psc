// Ejercicio 44: Calcular el factorial de un número mayor o igual a 0 (Pseudocódigo, Ciclo Mientras) .
Proceso ejercicio44
		Definir n, i, fact Como Entero;
		
		Leer n;
		fact <- 1;
		i <- 1;
		
		Mientras i <= n Hacer
			fact <- fact * i;
			i <- i + 1;
		FinMientras
		
		Escribir "Factorial: ", fact;
FinProceso
