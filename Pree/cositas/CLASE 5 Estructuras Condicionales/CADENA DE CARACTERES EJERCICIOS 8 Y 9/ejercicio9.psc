//Ejercicio 9 
//Leer una frase y contar el numero de vocales (de cada una) que aparecen 

Proceso Cadena_de_Caracteres
	Definir frase,letra como cadena;
	definir i,contA,contE,contI,contO,contU Como Entero;
	
	Escribir Sin Saltar "Digite una cadena: ";
	leer frase;
	
	frase <- Minusculas(frase);
	contA <- 0;
	contE <- 0;
	contI <- 0;
	contO <- 0;
	contU <- 0;
	para i<-0 hasta (Longitud(frase)-1) Hacer
		letra <- Subcadena(frase,i,i);
		si letra = "a" Entonces
			contA <- contA + 1;
		SiNo
			si letra = "e" Entonces
				contE <- contE + 1;
			SiNo
				si letra = "i" Entonces
					contI <- contI + 1;
				SiNo
					si letra = "o" Entonces
						contO <- contO + 1;
					SiNo
						si letra = "u" Entonces
							contU <- contU + 1;
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
	
	Escribir "";
	Escribir "Conteo A: ",contA;
	Escribir "Conteo E: ",contE;
	Escribir "Conteo I: ",contI;
	Escribir "Conteo O: ",contO;
	Escribir "Conteo U: ",contU;
FinProceso
