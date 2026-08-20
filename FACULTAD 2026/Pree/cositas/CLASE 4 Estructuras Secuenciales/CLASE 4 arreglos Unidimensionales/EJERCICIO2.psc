//Arreglos unidimensionales, array o vector
//ejercicio 2: Crear un arreglo unidimensional, donde el usuario indique el tamaño
//por teclado, luego llenar el arreglo con numeros aleatorios
//entre 1-100 y por ultimo mostrar los elementos del arreglo 
Proceso Array
	Definir num,n_elementos, i Como Entero;
	Dimension num[100];
	
	Escribir "Digite el numero de elementos para el arreglo: ";
	Leer n_elementos;
	
	para i<-0 Hasta n_elementos Con Paso 1 Hacer
		num[i] <- azar(100);
	FinPara
	
	Para i<-0 Hasta n_elementos Con Paso 1 Hacer
		Escribir num[i];
	FinPara
FinProceso
