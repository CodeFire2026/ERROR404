import java.util.Scanner;

public class HolaMundo7 {

        public static void main(String[] args) {
      // Al principio del video el profesor tenía un Hola Mundo común:
        // System.out.println("Hola mundo desde Java");
        
        // --- SECCIÓN 1: Variables con tipo explícito ---
        
        // Variables enteras (int)
        //int miVariable = 10;
        //System.out.println(miVariable);
        
        // Reasignamos el valor de la variable
        //miVariable = 5;
        //System.out.println(miVariable);
        
        // Variables de tipo texto (String)
        //String miVariableCadena = "Bienvenidos";
        //System.out.println(miVariableCadena);
        
        // Cambiamos el texto de la variable
        //miVariableCadena = "Sigamos creciendo en programación";
        //System.out.println(miVariableCadena);
        
        
        // --- SECCIÓN 2: Inferencia de tipos (var) ---
        // Con 'var', Java adivina automáticamente el tipo de dato según lo que le asignes
        
        //var miVariableEntera2 = 10;
        //var miVariableCadena2 = "Seguimos estudiando";
        
        // Mostramos las variables concatenando un texto explicativo
        //System.out.println("miVariableEntera2 = " + miVariableEntera2);
        //System.out.println("miVariableCadena2 = " + miVariableCadena2);
        //soutv + tab
        //Para ejecutar shift + F6 es la tecla para mayuscula
        //Reglas para definir una variable en Java 

        /*var usuario = "Osvaldo";
        //var titulo = "Ingeniero";
        //var union = titulo + usuario;
        //System.out.println("union = " + union);

        var a = 8;
        var b = 4;
        System.out.println(usuario + (a + b));

        //Ejercicio: Caracter Especiales con Java
        var nombre = "Natalia";
        System.out.println("\nNueva linea: \n" + nombre); //Diagonal inversa y letra N
        System.out.println("Tabulador: \t" + nombre); //Tabulador un espacio para centrar
        System.out.println("\t\t. :MENÚ:.");
        System.out.println("Retroseso: \b\b" + nombre); //Caracter de Retroseso
        System.out.println("Comillas Simples: '" + nombre + "'");
        System.out.println("Comillas Dobles: '" + nombre + "'");*/

        // Clase Scanner
       /* Scanner entrada = new Scanner(System.in);
        
        System.out.println("Digite su nombre: ");
        var usuario2 = entrada.nextLine();
        
        System.out.println("usuario2 = " + usuario2);
        
        System.out.println("Escriba el titulo: ");
        var titulo2 = entrada.nextLine();
        
        System.out.println("Resultado: " + titulo2 + " " + usuario2);
        
        // Cerramos el scanner al final de todo
        entrada.close();

        //  TIPOS DE DATOS PRIMITIVOS: ENTEROS
        
        //1. Tipo byte (Ocupa 8 bits de memoria) 
       /*  byte numEnteroByte = 127;
        System.out.println("numEnteroByte = " + numEnteroByte);
        System.out.println("Valor minimo del Byte: " + Byte.MIN_VALUE);
        System.out.println("Valor maximo del Byte: " + Byte.MAX_VALUE);

        // 2. Tipo short (Ocupa 16 bits de memoria)
        short numEnteroShort = 32767;
        System.out.println("numEnteroShort = " + numEnteroShort);
        System.out.println("Valor minimo del Short: " + Short.MIN_VALUE);
        System.out.println("Valor maximo del Short: " + Short.MAX_VALUE);

        // 3. Tipo int (Ocupa 32 bits de memoria - El más usado)
        int numEnteroInt = 2147483647;
        System.out.println("numEnteroInt = " + numEnteroInt);
        System.out.println("Valor minimo del int: " + Integer.MIN_VALUE);
        System.out.println("Valor maximo del int: " + Integer.MAX_VALUE);

        // 4. Tipo long (Ocupa 64 bits de memoria - Para números gigantes) 
        long numEnteroLong = 9223372036854775807L;
        System.out.println("numEnteroLong = " + numEnteroLong);
        System.out.println("Valor minimo del long: " + Long.MIN_VALUE);
        System.out.println("Valor maximo del long: " + Long.MAX_VALUE);*/

        //TIPOS DE DATOS PRIMITIVOS: FLOTANTES
        
        // 1. Tipo float (Precisión simple - Ocupa 32 bits) 
        /*float numFloat = 3.4028235E38F; 
        System.out.println("numFloat = " + numFloat);
        System.out.println("El valor minimo de float: " + Float.MIN_VALUE);
        System.out.println("El valor maximo de float: " + Float.MAX_VALUE);

        // 2. Tipo double (Precisión doble - Ocupa 64 bits - El que viene por defecto)
        double numDouble = 1.7976931348623157E308D;
        System.out.println("numDouble = " + numDouble);
        System.out.println("El valor minimo de double: " + Double.MIN_VALUE);
        System.out.println("El valor maximo de double: " + Double.MAX_VALUE);

        // Leemos el número que escribas (Ojo: si ponés más de 127, Java va a tirar error)
        byte numEnteroByte = entrada.nextByte(); 
        System.out.println("Tu numero en Byte es = " + numEnteroByte);
        System.out.println("Valor minimo del Byte: " + Byte.MIN_VALUE);
        System.out.println("Valor maximo del Byte: " + Byte.MAX_VALUE);

        // --- Tipo short ---
        short numEnteroShort = 32767;
        System.out.println("numEnteroShort = " + numEnteroShort);
        System.out.println("Valor minimo del Short: " + Short.MIN_VALUE);
        System.out.println("Valor maximo del Short: " + Short.MAX_VALUE);

        // --- Tipo int ---
        int numEnteroInt = 2147483647;
        System.out.println("numEnteroInt = " + numEnteroInt);
        System.out.println("Valor minimo del int: " + Integer.MIN_VALUE);
        System.out.println("Valor maximo del int: " + Integer.MAX_VALUE);

        // --- Tipo long ---
        long numEnteroLong = 10;
        System.out.println("numEnteroLong = " + numEnteroLong);
        System.out.println("Valor minimo del long: " + Long.MIN_VALUE);
        System.out.println("Valor maximo del long: " + Long.MAX_VALUE);*/
        
        //  TIPOS PRIMITIVOS: TIPO CHAR (CARÁCTER)
        
        // El tipo char básico usa comillas simples obligatoriamente
        /* char miVariableChar = 'a';
        System.out.println("miVariableChar = " + miVariableChar);

        // Las 3 formas de asignar un mismo caracter (Ejemplo con el $) 
        
        // Forma 1: Usando el código Unicode del símbolo (en este caso \u0024)
        var varCaracter1 = '\u0024'; 
        System.out.println("varCaracter1 = " + varCaracter1);
        
        // Forma 2: Usando el valor decimal del símbolo en la tabla (el número 36)
        // Le ponemos (char) adelante para avisarle a Java que lo transforme en letra
        var varCaracterDecimal1 = (char)36; 
        System.out.println("varCaracterDecimal1 = " + varCaracterDecimal1);
        
        // Forma 3: Pegando el símbolo directamente entre comillas simples
        var varCaracterSimbolo1 = '$';
        System.out.println("varCaracterSimbolo1 = " + varCaracterSimbolo1);

        // ¿Qué pasa si guardamos un char adentro de un INT? 
        // Al guardarlo en un 'int', Java te muestra el número real que tiene atrás
        
        int varEnteroChar = '$';
        System.out.println("varEnteroChar = " + varEnteroChar); // Te va a mostrar 36
        
        int caracterChar = 'b';
        System.out.println("caracterChar = " + caracterChar); // Te va a mostrar 98*/


        //TIPOS PRIMITIVOS BOOLEANOS (Condicionales) parte 1
        
       /* boolean varBool = true;
        System.out.println("varBool = " + varBool);
        
        if (varBool) {
            System.out.println("La bandera es verde");
        } else {
            System.out.println("La bandera es roja");
        }

        //Algoritmo: ¿Es mayor de edad?
        var edad = 18; //Literal tener presente la inferencia de tipos
        //var adulto = edad >=18; // Esta es una expresion booleana
        if (edad >=18){
            System.out.println("Eres mayor de edad");
        }
        else{
            System.out.println("Eres menor de edad");
        }

        //Conversión de tipos primitivos
        edad = Integer.parseInt("20");
        System.out.println("edad = " + (edad + 1));
        
        var valorPI = Double.parseDouble("3.1416");
        System.out.println("valorPI = " + valorPI);*/
        
        //Pedir un valor
        var entrada = new Scanner(System.in);
        
        System.out.println("Digite su edad:");
        var edad = Integer.parseInt(entrada.nextLine()); 
        System.out.println("edad = " + edad);
        
        //Conversión de tipos primitivos en Java Parte 2
        var edadTexto = String.valueOf(10);
        System.out.println("edadTexto = " + edadTexto);
        
        var fraseChar = "programadores".charAt(4);
        System.out.println("fraseChar = " + fraseChar);
        
        System.out.println("Digite un carcater: ");
        var fraseChar2 = entrada.nextLine().charAt(0); 
        System.out.println("fraseChar = " + fraseChar2);
        
        // CERRAR EL SCANNER AL FINAL
        entrada.close();

        int num1 = 5, num2 = 4;
        var solucion = num1 + num2;
        System.out.println("Solucion de la suma = " + solucion);

        solucion = num1 - num2;
        System.out.println("solucion de la resta = " + solucion);

        solucion = num1 * num2;
        System.out.println("solucion de la multiplicación = " + solucion);

        solucion = num1 / num2;
        System.out.println("solucion de la división = " + solucion);

        solucion = num1 % num2; //Guarda el residuo entero de la división // 5/4
        System.out.println("solucion = " + solucion); // // 5/4

        if (num1 % 2 == 0)
        System.out.println("Es un número Par");
        else
        System.out.println("Es un número Impar");

        int varNum1 = 1, varNum2 = 4;
        var varNum3 = varNum1 + 6 - varNum2; //Una operación
        System.out.println("varNum3 = " + varNum3);

        varNum1 += 1; //
        System.out.println("varNum1 = " + varNum1);

        //     -=    *=    /=    %=
        varNum2 -= 2;
        System.out.println("varNum2 = " + varNum2);

        varNum1 *= 5;
        System.out.println("varNum1 = " + varNum1);

        varNum3 /= 4;
        System.out.println("varNum3 = " + varNum3);
        
        varNum1 %= 6;
        System.out.println("varNum1 = " + varNum1);


    }
}


