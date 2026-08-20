Proceso Ejercicios_Arreglos 
	Definir num,i,posicion Como Entero;
	dimension num[5];
	para i<-0 hasta 4 Hacer
		Escribir i,". Digite un numero: ";
		Leer num[i];
	FinPara
	Repetir
		Escribir "Digite un aposicion del arreglo: ";
		leer posicion;
	Hasta Que posicion <= 0 y posicion <= 4
	para i<-posicion hasta 3 Hacer
		num[i] <- num[i+1];
	FinPara
	Escribir "";
	Escribir "El nuevo arreglo es: ";
	para i<-0 hasta 3 hacer 
		Escribir i, ". Elemento: ",num[i];
	FinPara
FinProceso
