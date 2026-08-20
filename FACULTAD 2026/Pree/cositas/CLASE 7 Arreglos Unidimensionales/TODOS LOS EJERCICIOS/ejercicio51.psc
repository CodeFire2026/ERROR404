//Ejercicio 51: Ingresar elementos de manera manual.
Proceso Ejercicio51
    Definir numero, i Como Entero;
    Dimension numero[5];
	
    // Carga manual
    numero[0] <- 10;
    numero[1] <- 20;
    numero[2] <- 30;
    numero[3] <- 40;
    numero[4] <- 50;
	
    // Mostrar datos
    Para i <- 0 Hasta 4 Hacer
        Escribir "Elemento ", i, ": ", numero[i];
    FinPara
FinProceso