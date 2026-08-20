//Ejercicio4 hacer un algortimo que llene una matriz 4x4 y que almacene
//la diagonal principal en un arreglo, imprimir el arreglo resultante 
//diagrama N-S
Proceso Matrices
	Definir num,i,j Como Entero;
	dimension num[3,4];
	Definir mayor,suma_col,posCol Como Entero;
	//pedimos los elementos de la matriz 
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 3 Hacer
			Escribir "Digite un numero[",i,"][",j,"]: "Sin Saltar;
			leer num[i,j];
		FinPara
	FinPara
	//mostramos la matriz
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 3 Hacer
			Escribir num[i,j]," " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	//almacenamos dentros de mayor la suma de los elementos de la primera columna 
	suma_col<-0;
	para i<-0 Hasta 2 Hacer
		suma_col<-suma_col+num[i,0];
	FinPara
	//por el momento la primera columna es la que tiene la mayor suma_col
	mayor <- suma_col;
	posCol<- 0;
	//ahora, vamos a recorrer la demas columnas y sumamos
	para j<-1 hasta 3 Hacer
		suma_col<-0;
		para i<-0 hasta 2 Hacer
			suma_col<-suma_col+num[i,j];
		FinPara
		si suma_col> mayor Entonces
			mayor<- suma_col;
			posCol<- j;
		FinSi
	FinPara
	Escribir "";
	Escribir "La columna con la mayor suma es: ",posCol;
	Escribir "La suma de dicha columna es: ",mayor;
	Escribir "";
FinProceso
