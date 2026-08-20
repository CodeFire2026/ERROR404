//Ejercicio 3 hacer un algoritmo que llene una matriz de 4x4 
//calcular la suma de cada fila y almacenar en un arreglo
//la suma de cada columna y almacenarla en otro arreglo
//(diagrama N-S)
Proceso Ejercicios_Matrices
	definir num,i,j Como Entero;
	dimension num[4,4];
	definir filas,suma_filas,posFila Como Entero;
	dimension filas[4];
	definir columnas,suma_col,posCol Como Entero;
	dimension columnas[4];
	//pedimos los elementos de la matriz al usuario 
	para i<-0 hasta 3 hacer 
		para j<-0 hasta 3 Hacer
			Escribir "Digite un numero[",i,"][",j,"]: ";
			leer num[i,j];
		FinPara
	FinPara
	//mostrar matriz 
	Escribir "";
	Para i<-0 hasta 3 Hacer
		para j<-0 hasta 3 hacer 
			Escribir num[i,j]," "Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	//recorremos la matriz y sumamos las filas 
	posFila <-0;
	para i<-0 hasta 3 Hacer
		suma_filas <-0;
		para j<-0 hasta 3 Hacer
			suma_filas <- suma_filas+num[i,j];
		FinPara
		filas[posFila]<-suma_filas;
		posFila <- posFila+1;
	FinPara
	//recorremos la matriz y sumamos las columnas 
	posCol<-0;
	para j<-0 hasta 3 Hacer
		suma_col<-0;
		para i <-0 hasta 3 Hacer
			suma_col<- suma_col+num[i,j];
		FinPara
		columnas[posCol]<- suma_col;
		posCol<-posCol+1;
	FinPara
	//mostramos el arreglo con las sumas de las filas 
	Escribir "";
	Escribir "La suma de las filas son: "Sin Saltar;
	para i<-0 hasta 3 Hacer
		Escribir filas[i]," " Sin Saltar;
	FinPara
	//mostramos el arreglo con la suma de las columnas
	Escribir "";
	Escribir "Lasuma de las columnas son: "Sin Saltar;
	para i<-0 hasta 3 Hacer
		Escribir columnas[i]," "Sin Saltar;
	FinPara
	Escribir "";
	
FinProceso
