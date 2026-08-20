//Ejercicio arreglos 2
Proceso Ejercicios_Arreglos
	Definir letras Como Cadena;
	Dimensionar letras[100];
	Definir n_elementos Como Entero;
	Definir i Como Entero;
	Repetir
		Escribir 'Digite el numero de elementos para el arreglo: ';
		Leer n_elementos;
	Hasta Que n_elementos>0
	Para i<-0 Hasta (n_elementos-1) Hacer
		Escribir (i+1), ' Digite una letra: ';
		Leer letras[i];
	FinPara
	Para i<-(n_elementos-1) Hasta 0 Con Paso -1 Hacer
		Escribir letras[i];
	FinPara
FinProceso
