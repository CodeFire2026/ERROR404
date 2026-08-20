//	Ejercicio 98: Función para sumar dos números.
Funcion resultado <- sumar(a, b)
	definir resultado Como Entero;
	resultado <- a + b;
FinFuncion

Algoritmo Ejercicio98
	Definir num1, num2, res Como Entero;
	
	Escribir "Ingrese un número: ";
	Leer num1;
	Escribir "Ingrese otro número: ";
	Leer num2;
	
	res <- sumar(num1, num2);
	
	Escribir "La suma es: ", res;
FinAlgoritmo