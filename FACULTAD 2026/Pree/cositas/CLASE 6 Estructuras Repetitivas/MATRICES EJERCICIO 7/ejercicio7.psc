//Ejercicio 7 rellenando una matriz, hacer un programa para rellenar una matriz pidiendo al usuario el 
//el numero de filas y columnas, posteriormente mostrar la matriz en oantalla
//pseudocodigo
Proceso matrices
	definir matriz,filas,columnas,i,j Como Entero;
	dimension matriz[100,100]; //esto es cuando no sabemos la Dimension
	
	//pedimos el numero de filas al usuario 
	Escribir "Digite el numero de filas para la matriz: ";
	Leer filas;
	//pedimos el numero de columnas al usuario 
	Escribir "Digite el numero de columnas para la matriz: ";
	Leer columnas;
	
	//llenamos la matriz 
	para i <-0 hasta filas-1 Con Paso 1 Hacer
		para j<-0 hasta columnas-1 con paso 1 Hacer
			Escribir Sin Saltar"Digite un numero[",i,"][",j,"]: ";
			leer matriz[i,j];
		FinPara
	FinPara
	Escribir "";
	
	//mostramos la matriz
	Escribir "";
	para i<-0 hasta filas-1 con paso 1 Hacer
		para j<-0 hasta columnas-1 con paso 1 hacer 
			Escribir Sin Saltar matriz[i,j]," ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinProceso
