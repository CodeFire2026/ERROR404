//ejercicio1 hacer un algoritmo que almace numeros en una matriz de 3*4 
//imprimir la suma de los numeros pares almacenados en la matriz 

Proceso principal
	Definir num,i,j,suma Como Entero;
	dimension num[3,4];
	
	//Pedimos los elementos de la matriz 
	para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 hasta 3 con paso 1 Hacer
			Escribir Sin Saltar "Digite un numero[",i,"][",j,"]: ";
			Leer num[i,j];
		FinPara
	FinPara
	
	Escribir "";
	//mostramos la matriz 
	para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 hasta 3 con paso 1 Hacer
			Escribir Sin Saltar num[i,j], " ";	
		FinPara
		Escribir "";
	FinPara
	
	//sumar los elementos pares de la matriz 
	suma<-0;
	para i<-0 hasta 2 con paso 1 Hacer
		para j<-0 hasta 3 Con Paso 1 Hacer
			si num[i,j] mod 2 = 0 Entonces
				suma <- suma + num[i,j];
			FinSi
		FinPara
	FinPara
	
	Escribir "";
	Escribir "La suma de los pares es: ",suma;
FinProceso
