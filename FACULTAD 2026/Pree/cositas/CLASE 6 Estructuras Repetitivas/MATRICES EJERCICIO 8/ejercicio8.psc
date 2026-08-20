//Ejercicio 8 mostrar la diagonal principal de una matriz 
//realizar un programa que defina un matriz de 3x3 y escriba un ciclo para que 
//muestre la diagonal principal de la matriz 
//hacerlo en diagrama de flujo 
Proceso matrices 
	definir i,j Como Entero;
	definir matriz Como Caracter;
	dimension matriz[3,3];
	matriz[0,0] <- "1";
	matriz[0,1] <- "2";
	matriz[0,2] <- "3";
	matriz[1,0] <- "4";
	matriz[1,1] <- "5";
	matriz[1,2] <- "6";
	matriz[2,0] <- "7";
	matriz[2,1] <- "8";
	matriz[2,2] <- "9";
	Escribir "";
	//mostramos la matriz 
	para i <- 0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			Escribir Sin Saltar matriz[i,j]," ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	//mostramos solo la diagonal principal
	para i<-0 hasta 2 Hacer
		para j<-0 hasta 2 Hacer
			si i = j Entonces
				Escribir Sin Saltar matriz[i,j]," ";
			SiNo
				si i <> j Entonces
					matriz[i,j] <- " ";
					Escribir Sin Saltar matriz[i,j]," ";
				FinSi
			FinSi
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinProceso
