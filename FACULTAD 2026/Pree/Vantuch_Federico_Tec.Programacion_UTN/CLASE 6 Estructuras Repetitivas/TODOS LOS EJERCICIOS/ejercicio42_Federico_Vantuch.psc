//Ejercicio 42: Leer 10 números e imprimir cuantos son positivos, negativos y neutros (Diagrama N-S, Ciclo Para) .
Proceso ejercicio42
		Definir num, i, pos, neg, cero Como Entero;
		
		pos <- 0;
		neg <- 0;
		cero <- 0;
		
		Para i <- 1 Hasta 10 Hacer
			Leer num;
			
			Si num > 0 Entonces
				pos <- pos + 1;
			SiNo
				Si num < 0 Entonces
					neg <- neg + 1;
				SiNo
					cero <- cero + 1;
				FinSi
			FinSi
		FinPara
		
		Escribir "Positivos: ", pos;
		Escribir "Negativos: ", neg;
		Escribir "Ceros: ", cero;
FinProceso
