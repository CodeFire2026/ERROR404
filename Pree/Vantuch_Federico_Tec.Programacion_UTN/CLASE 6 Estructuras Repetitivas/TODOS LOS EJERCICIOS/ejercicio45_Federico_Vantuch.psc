// Ejercicio 45: Calcular la siguiente sumatoria de los "N" elementos: S=1+4+9+? (Diagrama N-S, Ciclo Mientras) .
Proceso ejercicio45
		Definir n, i, suma Como Entero;
		
		Leer n;
		i <- 1;
		suma <- 0;
		
		Mientras i <= n Hacer
			suma <- suma + i^2;
			i <- i + 1;
		FinMientras
		
		Escribir "Suma: ", suma;
FinProceso
