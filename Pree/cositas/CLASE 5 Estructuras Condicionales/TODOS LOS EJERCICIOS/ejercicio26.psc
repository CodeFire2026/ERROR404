// Ejercicio 26: Leer tres números diferentes e imprimir el número mayor de los tres (Pseudocódigo).
Proceso ejercicio26
		Definir a, b, c Como Entero;
		
		Escribir "Ingrese tres numeros:";
		Leer a, b, c;
		
		Si a > b Y a > c Entonces
			Escribir "El mayor es: ", a;
		SiNo
			Si b > c Entonces
				Escribir "El mayor es: ", b;
			SiNo
				Escribir "El mayor es: ", c;
			FinSi
		FinSi
	
FinProceso
