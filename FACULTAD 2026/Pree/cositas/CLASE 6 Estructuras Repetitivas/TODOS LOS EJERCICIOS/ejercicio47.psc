// Ejercicio 47: Calcular la suma de los "N" términos de la siguiente serie: (serie convergente; serie armónica alternante o serie de Leibniz) (Diagrama de flujo, Ciclo Repetir)
Proceso ejercicio47
		Definir n, i Como Entero;
		Definir suma Como Real;
		
		Leer n;
		suma <- 0;
		
		i <- 1;
		
		Repetir
			Si i MOD 2 = 0 Entonces
				suma <- suma - (1 / i);
			SiNo
				suma <- suma + (1 / i);
			FinSi
			
			i <- i + 1;
		Hasta Que i > n;
		
		Escribir "Resultado: ", suma;
FinProceso
