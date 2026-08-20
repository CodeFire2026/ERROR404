// Ejercicio 101: Ejemplo de parámetro por referencia, sumar 10.
SubProceso sumarDiezPorReferencia(valor Por Referencia)
    valor <- valor + 10;
FinSubProceso

Algoritmo Ejercicio101
    Definir num Como Entero;
    
    Escribir "Ingrese un número: ";
    Leer num;
    
    sumarDiezPorReferencia(num);
    
    Escribir "Resultado: ", num;
FinAlgoritmo