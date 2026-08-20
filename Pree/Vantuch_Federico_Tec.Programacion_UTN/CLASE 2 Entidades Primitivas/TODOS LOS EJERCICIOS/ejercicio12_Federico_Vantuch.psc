//?	Ejercicio 12: Escribir la siguiente expresión en forma de expresión algorítmica.  (Fórmula de Bhaskara,
//es una fórmula cuadrática, una ecuación de segundo grado) (pseudocódigo)
Proceso ejercicio12
		Definir a, b, c Como Real;
		Definir x1, x2, discriminante Como Real;
		
		Escribir "Ingrese a:";
		Leer a;
		Escribir "Ingrese b:";
		Leer b;
		Escribir "Ingrese c:";
		Leer c;
		
		discriminante <- b^2 - 4*a*c;
		
		x1 <- (-b + rc(discriminante)) / (2*a);
		x2 <- (-b - rc(discriminante)) / (2*a);
		
		Escribir "Solucion 1: ", x1;
		Escribir "Solucion 2: ", x2;
FinProceso
