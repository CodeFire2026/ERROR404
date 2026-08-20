//Ejercicio 2 hacer u algoritmo que llene una matriz de 4x4 y determine la posicion
// [fila,columna] del numero mayor almacenado en la matriz

Proceso principal 
	Definir num,i,j,mayor,posfila,posCol Como Entero;
	dimension num[4,4];
	para i<-0 hasta 3 Hacer
		para j<-0 hasta 3 Hacer
			Escribir Sin Saltar"digite un numero[",i,"][",j,"]: ";
			Leer num[i,j];
		FinPara
	FinPara
	
	//mostrar la matriz en pantalla 
	Escribir "";
	para i<-0 hasta 3 Hacer
		para j<-0 hasta 3 Hacer
			Escribir Sin Saltar num[i,j]," ";
		FinPara
	FinPara
	mayor <-0;
	para i<-0 hasta 3 hacer 
		para j<-0 hasta 3 Hacer
			si num[i,j] > mayor Entonces
				mayor <- num[i,j];
				posfila <- i;
				posCol <- j;
			FinSi
		FinPara
	FinPara
	Escribir "";
	Escribir "La posicion del numero es: ",posfila," Columna: ",posCol;
	Escribir "El numero mayor es: ",mayor;
FinProceso
