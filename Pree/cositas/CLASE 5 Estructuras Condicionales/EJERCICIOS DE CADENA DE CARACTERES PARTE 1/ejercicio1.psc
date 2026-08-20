//Ejercicio 1
// diseñe un programa que permita ingresar una cadena de caracteres, y detecte 
//cuantas vocales tiene.
Proceso Cadena_de_caracteres
	definir i,j,conteoVocales Como Entero;
	Definir frase,vocales como cadena;
	
	escribir sin saltar "Digite una cadena: ";
	Leer frase;
	
	//pasamos la frase a miniscula
	frase <- Minusculas(frase);
	vocales <- "aeiou";
	conteoVocales <- 0;
	
	para i<-0 hasta (Longitud(frase)-1) con paso 1 Hacer
		para j<-0 hasta (Longitud(vocales)-1) con paso 1 hacer
			si (Subcadena(frase,i,i) = Subcadena(vocales,j,j)) Entonces
				conteoVocales <- conteoVocales +1;
			FinSi
		FinPara
	FinPara
	
	Escribir "El numero de vocales en la cadena es: ",conteoVocales;
FinProceso
