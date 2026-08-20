//  Ejercicio 99: Procedimiento para dividir un número a la mitad.
SubProceso dividirMitad(num)
    Definir resultado Como Real;
    resultado <- num / 2;
    Escribir "La mitad es: ", resultado;
FinSubProceso

Proceso  ejercicio99
    Definir n Como Real;
    
    Escribir "Ingrese un numero:";
    Leer n;
    
    dividirMitad(n);
FinProceso
