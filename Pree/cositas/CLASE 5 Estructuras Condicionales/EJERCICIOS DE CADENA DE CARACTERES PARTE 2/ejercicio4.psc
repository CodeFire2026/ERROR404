//Ejercicio 4
//Diseñe un algoritmo que elimine los espacios en blanco de un texto 
Proceso Cadena_de_Caracteres
	Definir frase,frase1 como cadena;
	Definir i Como Entero;
	
	Escribir Sin Saltar"Digite una cadena: ";
	Leer frase;
	i <- 0;
	frase1 <- "";
	
	Mientras (i<Longitud(frase)) Hacer
		//si el elemento de la cadena es espacio, avanzamos
		si Subcadena(frase,i,i) = " " Entonces
			i <- i + 1;
		SiNo //si no concatenamos el elemento
			frase1 <- Concatenar(frase1,Subcadena(frase,i,i));
			i <- i + 1;
		FinSi
	FinMientras
	
	frase <- frase1;
	
	Escribir "La cadena sin espacio es: ",frase;
	
FinProceso
