//Ejercicio 29: Leer 2 números; si son iguales multiplicarlos, si el primero es mayor restarlos, sino sumarlos (Pseudocódigo) .
Proceso ejercicio29
		Definir a, b, resultado Como Entero;
		
		Escribir "Ingrese dos numeros: ";
		Leer a, b;
		
		Si a = b Entonces
			resultado <- a * b;
		SiNo
			Si a > b Entonces
				resultado <- a - b;
			SiNo
				resultado <- a + b;
			FinSi
		FinSi
		
		Escribir "Resultado: ",resultado;
FinProceso
