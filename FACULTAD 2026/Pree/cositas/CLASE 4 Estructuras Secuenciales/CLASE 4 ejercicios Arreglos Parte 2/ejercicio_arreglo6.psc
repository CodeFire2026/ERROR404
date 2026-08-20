Proceso Ejercicios_Arreglos 
	definir num,ultimo,i Como Entero;
	dimension num[6];
	
	para i<-0 hasta 5 con paso 1 Hacer
		Escribir (i+1),". Digite un numero: ";
		Leer num[i];
	FinPara
	ultimo <- num[5];
	
	para i<-4 hasta 0 con paso -1 Hacer
		num[i+1] <- num[i];
	FinPara
	
	num[0] <- ultimo;
	
	Escribir "El nuevo arreglo es: ";
	para i<-0 hasta 5 con paso 1 Hacer
		escribir sin saltar num[i];
	FinPara 
	
FinProceso
