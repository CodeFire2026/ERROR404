//Ejercicio 28: En un almacén se hace un 20% de descuento a clientes cuya compra supere los $100. Determinar la cantidad a pagar (Diagrama N-S) .

Proceso ejercicio28
		Definir total, descuento, pagar Como Real;
		
		Escribir "Ingrese total de compra: ";
		Leer total;
		
		Si total > 100 Entonces
			descuento <- total * 0.20;
		SiNo
			descuento <- 0;
		FinSi
		
		pagar <- total - descuento;
		
		Escribir "Total a pagar: ",pagar;
	
FinProceso
