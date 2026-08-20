//Ejercicio 4: Un profesor prepara tres cuestionarios para una evaluacion 
//final: A,B,C. Se sabe que se tarda 5 minutos en revisar el cuestionario A, 
//8 en revisar el cuestionario B y 6 en revisar el cuestionario 
//la cantidad de examenes de cada tipo se entran por teclado 
//¿Cuantas horas y cuantos minutos se tardara en revisar todas las evaluaciones?

Proceso Ejercicio4
	definir cantidadA,cantidadB,cantidadC Como Entero;
	Definir tiempoA,tiempoB,tiempoC Como Entero;
	Definir tiempo_total,horas,minutos Como Entero;
	Escribir "Digite la cantidad de cuestionarios A: ";
	Leer cantidadA; 
	Escribir "Digite la cantidad de cuestionarios B: ";
	Leer cantidadB;
	Escribir "Digite la cantidad de cuestionarios C: ";
	Leer cantidadC;
	
	//calcular los minutos que se tardara por cada cuestionario
	tiempoA <- cantidadA * 5;
	tiempoB <- cantidadB * 8;
	tiempoC <- cantidadC * 6;
	
	//calcular el tiempo total que le toma revisar todos los cuestionarios 
	tiempo_total <- tiempoA+ tiempoB + tiempoC;
	
	//calculamos las horas y minutos
	horas <- trunc(tiempo_total/60);
	minutos <- tiempo_total mod 60;
	Escribir "Se tardara ",horas,"horas y ",minutos, "minutos";
	
	
FinProceso
