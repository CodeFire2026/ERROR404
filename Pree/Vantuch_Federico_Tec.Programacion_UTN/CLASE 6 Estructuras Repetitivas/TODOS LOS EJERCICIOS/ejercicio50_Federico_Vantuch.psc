// Ejercicio 50: Calcular la sumatoria de la serie de Taylor (Diagrama N-S, Ciclo Repetir)
Proceso ejercicio50
		Definir n, i, fact Como Entero;
		Definir suma Como Real;
		
		Leer n;
		
		suma <- 1;
		fact <- 1;
		i <- 1;
		
		Repetir
			fact <- fact * i;
			suma <- suma + (1 / fact);
			
			i <- i + 1;
		Hasta Que i > n;
		
		Escribir "Resultado: ", suma;
FinProceso
