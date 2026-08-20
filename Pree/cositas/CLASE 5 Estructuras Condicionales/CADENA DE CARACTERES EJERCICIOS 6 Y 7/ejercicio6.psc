//Ejercicio 6 
//diseñar un algoritmo que tomando como entrada una cadena de texto nos devuelva 
//si es o no un palindromo, se conoco que se denomina palindromo a una palabras
//o frase que ignorando los blancos se lee igual de izquierda a derecha que 
//de derecha a izquierda 
Proceso Cadena_de_Caracteres
	definir i Como Entero;
	Definir frase,frase2,fraseReves como cadenas;
	
	Escribir "Digite una cadena: ";
	leer frase;
	
	i<-0;
	frase2 <- "";
	
	//eliminamos los espacios en blanco de la cadena 
	Mientras i< Longitud(frase) Hacer
		si Subcadena(frase,i,i) <>" " Entonces
			frase2 <- Concatenar(frase2,Subcadena(frase,i,i));
			i <- i + 1;
		SiNo
			i <- i + 1;
		FinSi
	FinMientras
	frase <- frase2;
	//hallar la frase al reves
	fraseReves <- "";
	para i<-(Longitud(frase)-1) Hasta 0 Con Paso -1 Hacer
		fraseReves <- Concatenar(fraseReves,Subcadena(frase,i,i));
	FinPara
	
	//por ultimo, comparamos ambas cadenas
	si frase = fraseReves Entonces
		Escribir "La cadena es un palindromo ",frase;
	SiNo
		Escribir "La cadena NO es unpalindromo ",frase;
	FinSi
FinProceso
