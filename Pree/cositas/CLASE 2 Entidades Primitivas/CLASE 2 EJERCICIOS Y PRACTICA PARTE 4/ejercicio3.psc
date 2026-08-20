//Clase2 capitulo: Entidades primitivas - Ejercicios
Proceso Ejercicios
	//Ejercicio 3
	Definir a,b,aux Como Entero;
	Escribir "Digite el valor de A: ";
	Leer a;
	Escribir "Digite el valor de B: "; 
	Leer b;
	
	aux <-a; //guardamos el valor de A dentro de aux
	a <-b; //pasamos el valor de A hacia B
	b <- aux; //pasamos el valor de aux (A) hacia B
	
	Escribir "El nuevo valor de a es: ",a;
	Escribir "El nuevo valor de b es: ",b;
	
FinProceso
