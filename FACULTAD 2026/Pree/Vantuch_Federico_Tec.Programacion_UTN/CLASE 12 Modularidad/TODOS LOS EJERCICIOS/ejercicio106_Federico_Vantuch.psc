Proceso  ejercicio106
    Definir apellidos Como Cadena;
    Dimension apellidos[5];
    Definir i, j Como Entero;
    Definir aux Como Cadena;
    
    Para i <- 0 Hasta 5 Hacer
        Leer apellidos[i];
    FinPara
    
    Para i <- 0 Hasta 4 Hacer
        Para j <- i+1 Hasta 5 Hacer
            Si apellidos[i] > apellidos[j] Entonces
                aux <- apellidos[i];
                apellidos[i] <- apellidos[j];
                apellidos[j] <- aux;
            FinSi
        FinPara
    FinPara
    
    Para i <- 1 Hasta 5 Hacer
        Escribir apellidos[i];
    FinPara
FinProceso
