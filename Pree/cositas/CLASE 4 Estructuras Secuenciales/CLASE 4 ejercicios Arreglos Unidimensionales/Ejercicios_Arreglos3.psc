//Ejercicio Arreglo 3
Proceso Ejercicios_Arreglos
	Definir mayor,menor Como Real;
	Definir n_elementos, i Como Entero;
	Definir num como real;
	dimension num[100];
	Repetir
		Escribir "Digite el numero de elementos para el arreglo: ";
		Leer n_elementos;
	Hasta Que n_elementos>0
	para i<-0 hasta (n_elementos-1) Hacer
		Escribir (i+1), "Digite un numero: ";
		leer num[i];
	FinPara
	mayor <- num[0];
	menor <- num[0];
	Para i<-1 hasta (n_elementos-1) hacer 
		si num[i] > mayor Entonces
			mayor <- num[i];
		SiNo
			si num[i] < menor Entonces
				menor <- num[i];
			FinSi
		FinSi
	FinPara
	Escribir "El numero mayor es: ", mayor;
	Escribir "El numero menor es: ", menor;
FinProceso
