// Ejercicio 81: Leer una frase y contar el número de vocales (de cada una) que aparecen (Diagrama N-S).
Proceso Ejercicio81
	Definir frase, letra Como Caracter;
    Definir i, ca, ce, ci, co, cu Como Entero;
    
    // Inicialización
    ca<-0; ce<-0; ci<-0; co<-0; cu<-0;
    
    Escribir "Ingrese una frase: ";
    Leer frase;
    
    Para i <- 1 Hasta Longitud(frase) Hacer
        letra <- Minusculas(Subcadena(frase, i, i));
        
        // Reemplaza el bloque Segun por esto:
		Si letra = "a" Entonces
			ca <- ca + 1;
		Sino
			Si letra = "e" Entonces
				ce <- ce + 1;
			Sino
				Si letra = "i" Entonces
					ci <- ci + 1;
					// Y así con el resto...
				FinSi
			FinSi
		FinSi
    FinPara
    
    Escribir "Resultados: ";
    Escribir "Cantidad de A: ", ca;
    Escribir "Cantidad de E: ", ce;
    Escribir "Cantidad de I: ", ci;
    Escribir "Cantidad de O: ", co;
    Escribir "Cantidad de U: ", cu;
FinProceso