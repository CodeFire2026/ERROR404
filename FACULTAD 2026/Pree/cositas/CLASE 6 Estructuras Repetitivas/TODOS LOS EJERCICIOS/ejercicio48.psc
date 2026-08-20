// Ejercicio 48: Ingresar "N" números, calcular el máximo y mínimo de ellos (Pseudocódigo, Ciclo Repetir) .
Proceso ejercicio48
		Definir n, num, max, min Como Entero;
		Definir i Como Entero;
		
		Leer n;
		
		i <- 1;
		
		Repetir
			Leer num;
			
			Si i = 1 Entonces
				max <- num;
				min <- num;
			SiNo
				Si num > max Entonces
					max <- num;
				FinSi
				Si num < min Entonces
					min <- num;
				FinSi
			FinSi
			
			i <- i + 1;
		Hasta Que i > n;
		
		Escribir "Max: ", max;
		Escribir "Min: ", min;
FinProceso
