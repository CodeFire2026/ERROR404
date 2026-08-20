//Ejercicio 10: Leer los arreglos de 5 numeros enteros cada uno,
//que estaran ordenados crecientemente, copiar, fucionar los dos arreglos 
// en un tercero de forma que los numeros sigan ordenados
Proceso Ejercicios_Arreglos
	Definir i,j,k Como Entero;
	Definir creciente Como Logico;
	Definir a,b,c Como Entero;
	dimension a[5],b[5],c[10];
	
	Escribir "Digite los elelementos del primer arreglo: ";
	
	Repetir
		creciente <- Verdadero;
		//guardar el arreglo 1
		para i <- 0 hasta 4 con paso 1 hacer 
			escribir i,". Digite un numero: ";
			leer a[i];
		FinPara
		
		//comprobamos si el arreglo esta ordenado
		para i<-0 hasta 3 con paso 1 hacer 
			//decreciente 3 2 1 
			si a[i] > a[i+1] Entonces
				creciente <- Falso;
			FinSi
			
		FinPara
		si creciente = falso entonces 
			Escribir "Arreglo desordenado, vuelva a digitarlo";
		FinSi
	Hasta Que creciente = verdadero;
	
	Escribir "Digite los elelementos del segundo arreglo: ";
	
	Repetir
		creciente <- Verdadero;
		//guardar el arreglo 2
		para i <- 0 hasta 4 con paso 1 hacer 
			escribir i,". Digite un numero: ";
			leer b[i];
		FinPara
		
		//comprobamos si el arreglo esta ordenado
		para i<-0 hasta 3 con paso 1 hacer 
			//decreciente 3 2 1 
			si b[i] > b[i+1] Entonces
				creciente <- Falso;
			FinSi
			
		FinPara
		si creciente = falso entonces 
			Escribir "Arreglo desordenado, vuelva a digitarlo";
		FinSi
	Hasta Que creciente = verdadero;
	
	i <- 0; //para el arreglo a 
	j <- 0; //para el arreglo b 
	k <- 0; //para el arreglo c
	
	mientras (i<5 y j < 5) Hacer
		si a[i] < b[j] Entonces
			c[k] <- a[i];
			i <- i + 1;
		SiNo
			c[k] <- b[j];
			j <- j + 1;
		FinSi
		k <- k +1;
	FinMientras
	
	si(i=5) Entonces
		Mientras (j<5) Hacer
			c[k] <- b[j];
			j <- j + 1;
			k<- k + 1;
		FinMientras
	SiNo
		si (j=5) Entonces
			Mientras (i<5) Hacer
				c[k] <- a[i];
				i <- i + 1;
				k<- k + 1;
			FinMientras
		FinSi
	FinSi
	//mostramos el arreglo c
	para i<-0 hasta 9 Con Paso 1 Hacer
		Escribir i, ". Elemento: ",c[i];
	FinPara
FinProceso
