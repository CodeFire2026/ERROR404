// Ejercicio 46: Ingresar "N" enteros, visualizar la suma y cantidad de números pares, y el promedio de los impares (Pseudocódigo, Ciclo Mientras) .
Proceso ejercicio46
		Definir n, num Como Entero;
		Definir suma, pares, sumaImpares, contImpares Como Entero;
		
		Leer n;
		
		suma <- 0;
		pares <- 0;
		sumaImpares <- 0;
		contImpares <- 0;
		
		Mientras n > 0 Hacer
			Leer num;
			
			suma <- suma + num;
			
			Si num MOD 2 = 0 Entonces
				pares <- pares + 1;
			SiNo
				sumaImpares <- sumaImpares + num;
				contImpares <- contImpares + 1;
			FinSi
			
			n <- n - 1;
		FinMientras
		
		Escribir "Suma: ", suma;
		Escribir "Cantidad pares: ", pares;
		
		Si contImpares > 0 Entonces
			Escribir "Promedio impares: ", sumaImpares / contImpares;
		FinSi
FinProceso
