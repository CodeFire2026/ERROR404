//Arreglos unidimensionales, array o vector
//Ejercicio 1 
Proceso Array
	Definir i Como Entero;
	Definir num Como Entero;
	dimension num[4];
	//hay dos maneras en todos los lenguajes de programacion
	//para asignar los elementos: manualmente y pidiendole 
	//al usuario que nos digite la cantidad de elementos del arreglo 
	//num[0] <- 14;
	//num[1] <- 18;
	//num[2] <- 9;
	//num[3] <- 2;
	
	para i<-0 Hasta 3 Con Paso 1 Hacer
		Escribir "Digite un numero: ";
		Leer num[i];
	FinPara
	
	//mostrar los elementos del arreglo
	para i<-0 Hasta 3 Con Paso 1 Hacer
		Escribir num[i];
	FinPara
FinProceso
