// Ejercicio 40: Dada las horas trabajadas de 5 personas y la tarifa de pago, calcular el salario y la sumatoria de todos (Diagrama de flujo, Ciclo Para) .
Proceso ejercicio40
		Definir i, horas Como Entero;
		Definir tarifa, salario, total Como Real;
		
		total <- 0;
		
		Escribir "Ingrese tarifa por hora: ";
		Leer tarifa;
		
		Para i <- 1 Hasta 5 Hacer
			Escribir "Horas persona ", i, ":";
			Leer horas;
			
			salario <- horas * tarifa;
			total <- total + salario;
			
			Escribir "Salario: ", salario;
		FinPara
		
		Escribir "Total a pagar: ", total;
FinProceso
