// Ejercicio 23: Un alumno desea saber cuál será su calificación final en la materia de Algoritmos. Dicha calificación se compone de los siguientes porcentajes  (Diagrama N-S) :
//55%  del promedio de sus tres calificaciones parciales. 
//30% examen final 
//15% trabajo final
Proceso ejercicio23
		Definir n1, n2, n3, promedio Como Real;
		Definir examen, trabajo, final Como Real;
		
		Escribir "Ingrese 3 notas parciales: ";
		Leer n1, n2, n3;
		
		promedio <- (n1 + n2 + n3) / 3;
		
		Escribir "Ingrese nota examen final: ";
		Leer examen;
		
		Escribir "Ingrese nota trabajo final: ";
		Leer trabajo;
		
		final <- (promedio * 0.55) + (examen * 0.30) + (trabajo * 0.15);
		
		Escribir "Calificacion final: ", final;
FinProceso
