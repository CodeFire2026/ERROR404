// Ejercicio 39: Calcular independientemente la suma de los números pares e impares comprendidos entre 1 y 50 (Diagrama N-S, Ciclo Para).
Proceso ejercicio39
		Definir i, sumaPares, sumaImpares Como Entero;
		
		sumaPares <- 0;
		sumaImpares <- 0;
		
		Para i <- 1 Hasta 50 Hacer
			Si i MOD 2 = 0 Entonces
				sumaPares <- sumaPares + i;
			SiNo
				sumaImpares <- sumaImpares + i;
			FinSi
		FinPara
		
		Escribir "Suma pares: ", sumaPares;
		Escribir "Suma impares: ", sumaImpares;
FinProceso
