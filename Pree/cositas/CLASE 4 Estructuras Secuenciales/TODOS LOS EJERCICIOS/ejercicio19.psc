//	Ejercicio 19: Hacer un programa para ingresar el radio de un círculo y se reporte su área y la longitud de la circunferencia (Diagrama de flujo).
Proceso ejercicio19
		Definir radio, area, Long Como Real;
		
		Escribir "Ingrese el radio: ";
		Leer radio;
		
		area <- PI * radio^2;
		long <- 2 * PI * radio;
		
		Escribir "Area: ",area;
		Escribir "Longitud: ",Long;
FinProceso
