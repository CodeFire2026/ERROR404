//llenar y mostrar una matriz

Proceso matrices
	Definir num,i,j Como Entero;
	dimension num[3,3];
	
	//llenar una matriz, comenzando desde la filas
	para i<-0 Hasta 2 Con Paso 1 Hacer
		//llenando las columnas
		para j<-0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar "Digite un numero[",i,"][",j,"]: ";
			Leer num[i,j];
		FinPara
	FinPara
	Escribir "";
	//mostra una matriz
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar num[i,j];
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinProceso
