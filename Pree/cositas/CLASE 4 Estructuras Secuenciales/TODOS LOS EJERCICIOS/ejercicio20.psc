//s	Ejercicio 20: Un maestro desea saber qué porcentaje de hombres y qué porcentaje de mujeres hay en un grupo de estudiantes (Diagrama N-S) 

Proceso ejercicio20
		Definir hombres, mujeres, total Como Entero;
		Definir porcH, porcM Como Real;
		
		Escribir "Cantidad de hombres: ";
		Leer hombres;
		Escribir "Cantidad de mujeres: ";
		Leer mujeres;
		
		total <- hombres + mujeres;
		
		porcH <- (hombres / total) * 100;
		porcM <- (mujeres / total) * 100;
		
		Escribir "Porcentaje hombres: ", porcH, "%";
		Escribir "Porcentaje mujeres: ", porcM, "%";
FinProceso
