// Ejercicio 32: Elaborar un programa que me muestre el significado de aniversario de cada década hasta los 60. (diagrama de flujo)

Proceso ejercicio32
		Definir anios Como Entero;
		
		Escribir "Ingrese cantidad de años: ";
		Leer anios;
		
		Segun anios Hacer
			10: Escribir "Bodas de Hojalata";
			20: Escribir "Bodas de Porcelana";
			30: Escribir "Bodas de Perlas";
			40: Escribir "Bodas de Rubi";
			50: Escribir "Bodas de Oro";
			60: Escribir "Bodas de Diamante";
			De Otro Modo:
				Escribir "No corresponde a una decada especial";
		FinSegun
FinProceso
