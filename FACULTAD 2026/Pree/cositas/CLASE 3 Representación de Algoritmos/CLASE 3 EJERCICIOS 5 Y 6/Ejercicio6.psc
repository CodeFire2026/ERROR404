//Ejercicio 6: Un alumno desea saber cual sera su calificacion final en la materia 
//de algoritmo. Dicha calificacion se compone de los siguentes porcentajes:
// 55% del promedio de sus tres calificaciones parciales
// 30% de la calificacion del examen final
// 15% de la calificacion de un trabajo final
Proceso Ejercicio6
	definir parcial1,parcial2,parcial3,promedioP,notaParcial Como Real;
	Definir examen_final,nota_Examen Como Real;
	Definir notaTrabajo,notaFinalTrabajo Como Real;
	Definir notaFinal Como Real;
	Escribir "Digite las tres notas de los parciales: ";
	Leer parcial1,parcial2,parcial3;
	promedioP <- (parcial1+parcial2+parcial3)/3;
	notaParcial <- promedioP*0.55;
	Escribir "Digite la nota del examen final: ";
	Leer examen_final;
	nota_Examen <- examen_final*0.3;
	Escribir "Digite la nota del trabajo final: ";
	Leer notaTrabajo;
	notaFinalTrabajo <- notaTrabajo*0.15;
	notaFinal <- notaParcial+nota_Examen+notaTrabajo;
	Escribir "La calificacion es: ",notaFinal;
	
	
FinProceso
