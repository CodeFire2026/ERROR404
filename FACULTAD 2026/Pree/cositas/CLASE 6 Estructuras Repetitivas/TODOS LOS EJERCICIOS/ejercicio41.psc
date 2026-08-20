// Ejercicio 41: Diseñar un programa que determine si un año es bisiesto o no, repitiendo la acción hasta que el usuario lo decida (Diagrama de flujo, Ciclo Para) .
Proceso ejercicio41
		Definir anio Como Entero;
		Definir opcion Como Cadena;
		
		Repetir
			Escribir "Ingrese año:";
			Leer anio;
			
			Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0) Entonces
				Escribir "Es bisiesto";
			SiNo
				Escribir "No es bisiesto";
			FinSi
			
			Escribir "Desea continuar? (si/no)";
			Leer opcion;
			
		Hasta Que opcion = "n";
FinProceso
