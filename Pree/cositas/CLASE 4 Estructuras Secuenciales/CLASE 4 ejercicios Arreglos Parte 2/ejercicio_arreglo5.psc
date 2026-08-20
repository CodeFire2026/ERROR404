//Ejercicio arreglo 5
Proceso ejercicios_arreglos_parte_2
	definir i Como Entero;
	Definir creciente,decreciente Como Logico;
	definir num Como Real;
	dimension num[5];
	para i<-0 hasta 4 Hacer
		Escribir (i+1),". Digite un numero: ";
		Leer num[i];
	FinPara
	creciente <- Falso;
	decreciente <- Falso;
	para i<-0 hasta 3 hacer 
		si num[i] < num[i+1] Entonces
			creciente <- Verdadero;
		FinSi
		si num[i] > num[i+1] Entonces
			decreciente <- verdadero;
		FinSi
	FinPara
	si creciente = Verdadero y decreciente = Verdadero Entonces
		Escribir "El arreglo esta en forma creciente";
	SiNo
		si creciente = falso y decreciente = verdadero Entonces
			Escribir "Elarreglo esta en forma decreciente";
		SiNo
			Escribir "El arreglo esta en forma desordenada";
		FinSi
	FinSi
FinProceso
