// ejercicio5 hacer un algoritmo que llene una matriz 4x4 y que almacene la diagonal
// principal en un arreglo, imprimir el arreglo resultante (diagrama de flujo)
Proceso matrices
	Definir i, j, pos Como Entero;
	definir matriz,arreglo como caracter;
	dimension matriz[4,4], arreglo [4];
	// llenando la matriz 
	Para i<-0 Hasta 3 Hacer
		Para i<-0 Hasta 3 Hacer
			Escribir sin saltar "Digite un numero[",i,"][",j,"]: ";
			Leer matriz[i,j];
		FinPara
	FinPara
	// mostramos la matriz 
	Escribir "";
	Para i<-0 Hasta 3 Hacer
		Para j<-0 Hasta 3 Hacer
			Escribir sin saltar matriz[i,j]," ";
		FinPara
		Escribir "";
	FinPara
	// recorremos la matriz y copiamos la diagonal
	pos <-0;
	Escribir "";
	para i<-0 hasta 3 Hacer
		para j<-0 hasta 3 Hacer
			si i = j Entonces
				arreglo[pos] <- matriz[i,j];
				pos <- pos + 1;
			FinSi
		FinPara
	FinPara
	//por ultimo mostramos el arreglo
	Escribir "";
	Escribir Sin Saltar"Los elementos de la diagonal son: ";
	para i<-0 hasta 3 Hacer
		Escribir Sin Saltararreglo[i]," ";
	FinPara
	Escribir "",
FinProceso
