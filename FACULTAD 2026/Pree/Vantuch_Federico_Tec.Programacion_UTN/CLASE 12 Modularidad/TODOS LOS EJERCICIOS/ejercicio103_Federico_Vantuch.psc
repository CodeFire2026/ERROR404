SubProceso CalcularPotencia
    Definir base, exponente, resultado Como Real;
    Escribir "Ingrese la base:";
    Leer base;
    Escribir "Ingrese el exponente:";
    Leer exponente;
    resultado <- base ^ exponente;
    Escribir "El resultado es: ", resultado;
    Escribir "Presione Enter para continuar...";
    Esperar Tecla;
FinSubProceso

SubProceso CalcularRaiz
    Definir num, resultado Como Real;
    Escribir "Ingrese el número para calcular raíz cuadrada:";
    Leer num;
    Si num >= 0 Entonces
        resultado <- raiz(num);
        Escribir "La raíz cuadrada es: ", resultado;
    Sino
        Escribir "Error: No existe raíz cuadrada de números negativos en reales.";
    FinSi
    Escribir "Presione Enter para continuar...";
    Esperar Tecla;
FinSubProceso

Proceso  Ejercicio103
    Definir opcion Como Entero;
    
    Repetir
        Borrar Pantalla;
        Escribir "=== MENÚ DE OPERACIONES ===";
        Escribir "1. Potenciación";
        Escribir "2. Raíz Cuadrada";
        Escribir "3. Terminar";
        Escribir "Seleccione una opción: ";
        Leer opcion;
        
        Segun opcion Hacer
            1:
                CalcularPotencia();
            2:
                CalcularRaiz();
            3:
                Escribir "Programa finalizado. ¡Adiós!";
            De Otro Modo:
                Escribir "Opción no válida. Intente de nuevo.";
                Esperar 2 Segundos;
        FinSegun
        
    Hasta Que opcion = 3
FinProceso
