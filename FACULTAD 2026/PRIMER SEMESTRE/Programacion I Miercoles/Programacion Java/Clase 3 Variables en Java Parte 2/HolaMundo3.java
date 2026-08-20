import java.util.Scanner;

public class HolaMundo3 {

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
        Scanner entrada = new Scanner(System.in);
        
        System.out.println("Digite su nombre: ");
        var usuario2 = entrada.nextLine();
        
        System.out.println("usuario2 = " + usuario2);
        
        System.out.println("Escriba el titulo: ");
        var titulo2 = entrada.nextLine();
        
        System.out.println("Resultado: " + titulo2 + " " + usuario2);
        
        // Cerramos el scanner al final de todo
        entrada.close();



    }
}

