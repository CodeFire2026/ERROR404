//EJERCICIO 8: LEER 5 ELEMENTOS NUMERICOS QUE SE INTRODUZCAN ORDENADOS DE FORMA CRECIENTE, ESTOS LOS GUARDAMOS EN UN ARREGLO DE TAMAÑO 6
//LEER UN NUMERO N, E INSERTARLO EN EL LUGAR ADECUADO PARTA QUE EL ARREGLO CONTINUE ORDENADO (DIAGRAMA DE FLUJO)

Proceso principal 
	definir num,i,dato,posicion,j como entero;
	dimension num{6]; 
	definir creciente como logico 
	Repetir
		creciente <- cverdadero;
		//DIGITAR LOS PRIMEROS 5 NUUMEROS
		para i<-0 hasta 4 Hacer
			escribir (i+1),". Digite un numero: ",
			leer num[i];
		FinPara
		para i<-0 hasta 3 Hacer
			//3-2-1-6-
			si num[i] > num[i+1] Entonces
				//COMPROBAR SI EL ARREGLO ESTA ORDENADO 
				creciente <- falso;
			FinSi
		FinPara
		si creciente =falso Entonces
			escribir "El arreglo no esta ordenado, digite nuevamente",
		FinSi
	Hasta Que creciente=Verdaderoescribir "Digite un valor o agregar: ",
	leer dato,
	posicion<- 0;
	j <- 0;
	//RECORRER EL ARREGLO PARA SABER LA POSICION DONDE INSERTA EL DATO 
	//1-2-3-5-6
	mientras num[j]<dato Y j<5 Hacer
		posicion <- posicion+1;
		j <- j+1;
	FinMientras
	//DESPLAZAMOS UNA POSICION (PARA HACER ESPACIO PARA DATO)
	//1-2-3- -5-6
	para i<-4 hasta posicion con paso -1 Hacer
		num[i+1]<-num[i];
	FinPara
	num[posicion]<-dato;
	escribir "";
	escribir "El nuevo arreglo es: ";
	para i<-0 hasta 5 Hacer
		escribir sin saltar num[i]," ";
	FinPara
	escribir "";
FinProceso
