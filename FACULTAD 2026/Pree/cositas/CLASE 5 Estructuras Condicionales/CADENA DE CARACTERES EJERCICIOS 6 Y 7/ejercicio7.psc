//Ejercicio 7
//ingresar una frase y modicarla convirtiendo el primer caracter de cada palabra si 
//esta fuera una letram de miniscula a mayuscula

Proceso Cadena_de_Caracteres
	definir i Como Entero;
	Definir frase,frase2 como cadenas;
	
	Escribir "Digite una cadena: ";
	leer frase;
	
	frase2 <- "";
	
	//Transformamos el primer caracter a Mayuscula
	frase2 <- Concatenar(frase2, Mayusculas(Subcadena(frase,0,0)));
	i<-1;
	Mientras i<Longitud(frase) Hacer
		si Subcadena(frase,i,i) <> " " Entonces
			frase2 <- Concatenar(frase2,Subcadena(frase,i,i));
			i<-i+1;
		SiNo
			//significa que el caracter es un espacio 
			mientras subcadena(frase,i,i)=" " Hacer
				frase2 <- Concatenar(frase2, " ");
				i<-i+1;
			FinMientras
			//Lo que viene despues de los espacio es el primer caracter
			frase2 <- Concatenar(frase2,Mayusculas(subcadena(frase,i,i)));
			i<-i+1;
		FinSi
	FinMientras
	
	frase <- frase2; 
	Escribir frase;
	
FinProceso
