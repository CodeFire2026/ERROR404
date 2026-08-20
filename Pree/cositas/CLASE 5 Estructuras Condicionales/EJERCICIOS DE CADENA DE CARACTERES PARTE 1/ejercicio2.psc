//Ejercicio 2
//calcular la longitud de 2 cadenas de caracteres, y mostrar la cadena con la 
//mayor longitud 
Proceso Cadena_de_caracteres
	Definir frase1,frase2 Como Caracter;
	Escribir "Digite una cadena: ";
	Leer frase1;
	Escribir "Digite otra cadena: ";
	leer frase2;
	Escribir "";
	si Longitud(frase1) = Longitud(frase2) Entonces
		Escribir "Ambas cadenas tienen la misma Longitud";
	SiNo
		si Longitud(frase1) > Longitud(frase2) Entonces
			Escribir frase1;
			Escribir "Su longitud es: ",Longitud(frase1);
		SiNo
			Escribir frase2;
			Escribir "Su longitud es: ",Longitud(frase2);
		FinSi
	FinSi
FinProceso
