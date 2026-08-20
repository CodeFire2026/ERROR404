// Ejercicio 49: Imprimir la serie de los "N" términos de la serie de Fibonacci (Diagrama de flujo, Ciclo Repetir) 
Proceso ejercicio49
		Definir n, i, a, b, c Como Entero;
		
		Leer n;
		
		a <- 0;
		b <- 1;
		
		Escribir a;
		Escribir b;
		
		i <- 3;
		
		Repetir
			c <- a + b;
			Escribir c;
			
			a <- b;
			b <- c;
			
			i <- i + 1;
		Hasta Que i > n;
FinProceso
