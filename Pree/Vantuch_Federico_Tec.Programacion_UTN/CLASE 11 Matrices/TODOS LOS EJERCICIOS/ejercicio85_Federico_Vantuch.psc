// Ejercicio 85: Llenar matriz 4×4 y determinar la posición (fila, columna) del número mayor (Diagrama de flujo) .
Proceso Ejercicio85
    Definir m, i, j, mayor, f, c Como Entero;
    Dimension m[4,4];
    
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3 Hacer
            Leer m[i,j];
        FinPara
    FinPara
    
    mayor <- m[0,0];
    f <- 0;
    c <- 0;
    
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3 Hacer
            Si m[i,j] > mayor Entonces
                mayor <- m[i,j];
                f <- i;
                c <- j;
            FinSi
        FinPara
    FinPara
    
    Escribir "Mayor: ", mayor, " Posicion: ", f, ",", c;
FinProceso