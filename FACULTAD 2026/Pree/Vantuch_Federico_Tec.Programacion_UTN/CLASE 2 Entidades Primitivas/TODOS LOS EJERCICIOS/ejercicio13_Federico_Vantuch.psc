//Ejercicio 13: Determinar la solución lógica de la siguiente operación: (pseudocódigo) 
	//	((3+5*8) < 3 y (( -6*4) + 2<2)) o (a>b) 
                        //3 

Proceso ejercicio13
		Definir a, b Como Entero;
		Definir resultado Como Logico;
		
		Escribir "Ingrese valor de a:";
		Leer a;
		Escribir "Ingrese valor de b:";
		Leer b;
		
		resultado <- ((3 + 5 * 8) < 3 Y ((-6 * 4) / 3 + 2 < 2)) O (a > b);
		
		Escribir "Resultado: ", resultado;
FinProceso
