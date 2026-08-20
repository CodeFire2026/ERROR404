//ejercicio 6 hacer un algoritmo que llene una matriz de 5x5 y que almacene en la 
//diagonal principal unosm y en las demas posiciones ceros, diagrama n-s
Proceso matrices
	Definir matriz,i,j Como Entero;
	dimension matriz[5,5];
	//llenamos la matriz 
	para i<-0 hasta 4 Hacer
		para j<-0 hasta 4 Hacer
			si i=j Entonces
				matriz[i,j] <- 1;
			SiNo
				matriz[i,j] <- 0;
			FinSi
		FinPara
	FinPara
	Escribir "";
	//mostamos la matriz 
	Escribir "	La matriz es: ";
	para i<-0 hasta 4 Hacer
		para j<-0 hasta 4 Hacer
			Escribir Sin Saltar matriz[i,j]," ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	
	
FinProceso
