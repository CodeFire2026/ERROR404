//	Ejercicio 18: Calcular la cantidad de segundos que están incluidos en el número de horas,
//minutos y segundos ingresados por el usuario (Pseudocódigo) .

Proceso ejercicio18
		Definir horas, minutos, seg, totalSegundos Como Entero;
		
		Escribir "Ingrese horas:";
		Leer horas;
		Escribir "Ingrese minutos:";
		Leer minutos;
		Escribir "Ingrese segundos:";
		Leer seg;
		
		totalSegundos <- (horas * 3600) + (minutos * 60) + seg;
		
		Escribir "Total en segundos: ", totalSegundos;
FinProceso
