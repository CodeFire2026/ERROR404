//?	Ejercicio 33:Hacer un programa que tenga un menú con las siguientes opciones(Diagrama N-S):
//Opción 1: Elevar un número a una potencia X 
//Opción 2: Sacar la raíz cuadrada de un número 
//Opción 3: Salir 
Proceso ejercicio33
		Definir opcion Como Entero;
		Definir num, potencia, resultado Como Real;
		
		Escribir "MENU:";
		Escribir "1. Elevar un numero a una potencia";
		Escribir "2. Raiz cuadrada de un numero";
		Escribir "3. Salir";
		
		Escribir "Seleccione una opcion:";
		Leer opcion;
		
		Segun opcion Hacer
			
			1:
				Escribir "Ingrese numero:";
				Leer num;
				Escribir "Ingrese potencia:";
				Leer potencia;
				
				resultado <- num ^ potencia;
				
				Escribir "Resultado: ", resultado;
				
			2:
				Escribir "Ingrese numero:";
				Leer num;
				
				Si num >= 0 Entonces
					resultado <- rc(num);
					Escribir "Raiz cuadrada: ", resultado;
				SiNo
					Escribir "No se puede calcular raiz de numero negativo";
				FinSi
				
			3:
				Escribir "Saliendo del programa...";
				
			De Otro Modo:
				Escribir "Opcion invalida";
				
		FinSegun
FinProceso
