// Ejercicio 105: Escriba un subprograma nombrado cambio() que tenga un parámetro en número entero y seis parámetros de referencia en número entero nombrados cien, cincuenta, veinte, diez, cinco y uno, respectivamente. La función tiene que considerar el valor entero 
//transmitido como una cantidad en dólares y convertir el valor en el número menor de billetes equivalentes (Pseudocódigo) .
SubProceso cambio(total Por Valor, cien Por Referencia, cincuenta Por Referencia, veinte Por Referencia, diez Por Referencia, cinco Por Referencia, uno Por Referencia)
    // Calculamos cuántos billetes de 100 caben y el resto queda para los demás
    cien <- TRUNC(total / 100);
    total <- total MOD 100;
    
    // De lo que queda, calculamos los de 50
    cincuenta <- TRUNC(total / 50);
    total <- total MOD 50;
    
    // Continuamos con los de 20
    veinte <- TRUNC(total / 20);
    total <- total MOD 20;
    
    // Billetes de 10
    diez <- TRUNC(total / 10);
    total <- total MOD 10;
    
    // Billetes de 5
    cinco <- TRUNC(total / 5);
    total <- total MOD 5;
    
    // Lo que sobre después de todo son billetes de 1
    uno <- total;
FinSubProceso

Proceso  DesgloseBilletes
    Definir cantidad, c100, c50, c20, c10, c5, c1 Como Entero;
    
    Escribir "Ingrese la cantidad de dólares a convertir:";
    Leer cantidad;
    
    // Llamada al subprograma pasando variables por referencia
    cambio(cantidad, c100, c50, c20, c10, c5, c1);
    
    Escribir "El desglose mínimo de billetes es:";
    Escribir "Billetes de $100: ", c100;
    Escribir "Billetes de $50:  ", c50;
    Escribir "Billetes de $20:  ", c20;
    Escribir "Billetes de $10:  ", c10;
    Escribir "Billetes de $5:   ", c5;
    Escribir "Billetes de $1:   ", c1;
FinProceso
