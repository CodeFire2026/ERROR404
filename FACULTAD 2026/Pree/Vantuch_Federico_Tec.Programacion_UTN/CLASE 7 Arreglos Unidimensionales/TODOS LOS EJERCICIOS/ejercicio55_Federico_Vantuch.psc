//? Ejercicio 55: En un array de "N" números, calcular cuál es el mayor y cuál el menor (Diagrama de flujo) .
Proceso ejercicio55
		Definir n, i, num, max, min Como Entero;
		
		Leer n;
		
		Para i <- 1 Hasta n Hacer
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
		FinPara
		
		Escribir "Max: ", max;
		Escribir "Min: ", min;
FinProceso
