//Ejercicio 8 
//Sustituir todos los espacios en blanco de una frase por un asterisco (*)

Proceso Cadena_de_Caracteres
	definir i Como Entero;
	Definir frase,frase2 como cadenas;
	
	Escribir Sin Saltar "Digite una cadena: ";
	leer frase;
	//hola que tal?
	frase2 <- "";
	para i<-0 hasta (Longitud(frase)-1) Hacer
		si Subcadena(frase,i,i) <> " " Entonces
			frase2 <- Concatenar(frase2,Subcadena(frase,i,i));
		SiNo
			frase2 <- Concatenar(frase2,"*");
		FinSi
	FinPara
	
	frase <- frase2;
	Escribir "";
	Escribir frase;
FinProceso
