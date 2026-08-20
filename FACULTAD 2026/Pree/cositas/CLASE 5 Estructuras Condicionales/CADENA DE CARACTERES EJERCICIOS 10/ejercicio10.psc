//Ejercicio 10
//Realizar unprograma que permita contabilizar cuantas veces una subcadena
//se repite dentro de una frase 
Proceso Cadena_de_Caracteres
	definir i,contador Como Entero;
	definir frase,subfrase,palabra como cadena;
	
	Escribir Sin Saltar "Digite una cadena: ";
	Leer frase;
	Escribir Sin Saltar "Digite una palabra a buscar en la frase: ";
	Leer subfrase;
	
	i <- 0;
	contador <- 0;
	//si puedes imaginarlo, puedes programarlo
	Mientras i < Longitud(frase) Hacer
		palabra <- "";
		si Subcadena(frase,i,i) <> " " Entonces
			//almacenar la palabra completa dentro de la variable palabra 
			Mientras Subcadena(frase,i,i) <> " " y i < Longitud(frase) Hacer
				palabra <- Concatenar(palabra,Subcadena(frase,i,i));
				i <- i + 1;
			FinMientras
			
			si palabra = subfrase Entonces
				contador <- contador + 1;
			FinSi
		SiNo
			//es un espacio
			Mientras Subcadena(frase,i,i) = " " y i <- Longitud(frase) Hacer
				i <- i + 1;
			FinMientras
		FinSi
	FinMientras
	
	Escribir "";
	Escribir "La palabra: ",subfrase,"Se repite",contador,"Veces";
FinProceso
