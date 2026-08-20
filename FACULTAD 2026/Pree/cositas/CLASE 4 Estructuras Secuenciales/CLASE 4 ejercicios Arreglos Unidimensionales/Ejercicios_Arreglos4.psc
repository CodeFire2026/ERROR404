Proceso Ejercicios_Arreglos
	definir num,i como entero;
	dimension num[8];
	Para i<-0 Hasta 7 Hacer
		Escribir (i+1),". Digite un numero: ";
		Leer num[i];
	FinPara
	Para i<-0 Hasta 3 Hacer
		Escribir num[i];
		Escribir num[7-i];
	FinPara
FinProceso
