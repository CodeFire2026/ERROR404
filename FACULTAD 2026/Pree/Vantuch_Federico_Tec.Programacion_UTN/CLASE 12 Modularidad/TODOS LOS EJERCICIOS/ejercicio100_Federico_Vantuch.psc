// Ejercicio 100: Ejemplo de parámetro por valor, sumar 10.
Funcion sumarDiez(valor)
	valor <- valor + 10;
	Escribir "Dentro de la función: ", valor;
FinFuncion

Algoritmo Ejercicio100
	Definir num Como Entero;
	
	Escribir "Ingrese un número: ";
	Leer num;
	
	sumarDiez(num);
	
	Escribir "Fuera de la función: ", num;
FinAlgoritmo