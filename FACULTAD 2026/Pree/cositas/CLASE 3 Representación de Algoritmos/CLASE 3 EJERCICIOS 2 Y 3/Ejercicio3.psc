//Ejercicio 3: un maestro desa saber que porcentaje de hombres y que 
//porcentaje de mujeres hay en un grupo de estudiantes



Proceso Ejercicio3
	Definir num_hobres,num_mujeres Como Entero;
	Definir total_estudiantes Como Entero;
	Definir porcentajeH, porcentajeM como real;
	Escribir "Digite el numero de hombres: ";
	Leer num_hobres;
	Escribir "Digite el numero de mujeres: ";
	Leer num_mujeres;
	
	total_estudiantes <- num_hobres+num_mujeres;
	porcentajeH <- num_hobres/total_estudiantes * 100;
	porcentajeM <- num_mujeres/total_estudiantes * 100;
	
	Escribir "El porcentaje de hombres es: ", porcentajeH;
	escribir "El porcentaje de mujeres es: ", porcentajeM;
	
FinProceso
