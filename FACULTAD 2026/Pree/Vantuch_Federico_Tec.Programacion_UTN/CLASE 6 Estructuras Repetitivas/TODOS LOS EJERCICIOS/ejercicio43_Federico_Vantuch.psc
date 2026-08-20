// Ejercicio 43: Calcular la calificación promedio y la calificación más baja de un grupo de 10 alumnos (Pseudocódigo, Ciclo Para) .
Proceso ejercicio43
		Definir nota, suma, menor Como Real;
		Definir i Como Entero;
		
		suma <- 0;
		
		Para i <- 1 Hasta 10 Hacer
			Leer nota;
			suma <- suma + nota;
			
			Si i = 1 O nota < menor Entonces
				menor <- nota;
			FinSi
		FinPara
		
		Escribir "Promedio: ", suma / 10;
		Escribir "Nota mas baja: ", menor;
FinProceso
