// Ejercicio 30: Una frutería ofrece las manzanas con descuento según la siguiente tabla:  
//Determinar cuánto pagará una persona que compre manzanas en esa frutería. (NS)
Proceso ejercicio30
		Definir kilos Como Real;
		Definir precioKilo, total, descuento, pagar Como Real;
		
		Escribir "Ingrese kilos comprados: ";
		Leer kilos;
		
		Escribir "Ingrese precio por kilo: ";
		Leer precioKilo;
		
		total <- kilos * precioKilo;
		
		Si kilos <= 2 Entonces
			descuento <- 0;
		SiNo
			Si kilos <= 5 Entonces
				descuento <- total * 0.10;
			SiNo
				Si kilos <= 10 Entonces
					descuento <- total * 0.15;
				SiNo
					descuento <- total * 0.20;
				FinSi
			FinSi
		FinSi
		
		pagar <- total - descuento;
		
		Escribir "Total a pagar: ", pagar;
	
FinProceso
