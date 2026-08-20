// Ejercicio 38: Calcular la suma de los "N" primeros números (Pseudocódigo, Ciclo Para) 
Proceso ejercicio38
		Definir n, i, suma Como Entero;
		
		Escribir "Ingrese N:";
		Leer n;
		
		suma <- 0;
		
		Para i <- 1 Hasta n Hacer
			suma <- suma + i;
		FinPara
		
		Escribir "Suma: ", suma;
FinProceso
