// Ejercicio 21: Un profesor prepara tres cuestionarios (A, B y C). Se tarda 5 min  en revisar el cuestionario A, 8 en B y 6 en C. Ingresar cantidades por teclado 
//y calcular cuántas horas y minutos se tardará (Pseudocódigo) 

Proceso ejercicio21
		Definir cantA, cantB, cantC Como Entero;
		Definir totalMin, horas, minutos Como Entero;
		
		Escribir "Cantidad cuestionario A:";
		Leer cantA;
		Escribir "Cantidad cuestionario B:";
		Leer cantB;
		Escribir "Cantidad cuestionario C:";
		Leer cantC;
		
		totalMin <- (cantA * 5) + (cantB * 8) + (cantC * 6);
		
		horas <- TRUNC(totalMin / 60);
		minutos <- totalMin - (horas * 60);
		
		Escribir "Tiempo total: ", horas, " horas y ", minutos, " minutos";
FinProceso
