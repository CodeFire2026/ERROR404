// Ejercicio 22: Una tienda ofrece un descuento del 15% 
//sobre el total de la compra y un cliente desea saber cuánto deberá pagar (Diagrama de flujo) 

Proceso ejercicio22
		Definir total, descuento, totalPagar Como Real;
		
		Escribir "Ingrese total de la compra:";
		Leer total;
		
		descuento <- total * 0.15;
		totalPagar <- total - descuento;
		
		Escribir "Total a pagar: ", totalPagar;
FinProceso
