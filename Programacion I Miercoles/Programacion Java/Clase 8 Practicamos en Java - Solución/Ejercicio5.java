package Clase_8;

import java.util.Scanner;

public class Ejercicio5 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        // Pedir las tres calificaciones al usuario
        System.out.print("Ingrese la primera calificación: ");
        double calif1 = teclado.nextDouble();

        System.out.print("Ingrese la segunda calificación: ");
        double calif2 = teclado.nextDouble();

        System.out.print("Ingrese la tercera calificación: ");
        double calif3 = teclado.nextDouble();

        // Calcular la suma
        double suma = calif1 + calif2 + calif3;

        // Imprimir el resultado
        System.out.println("La suma de las tres calificaciones es: " + suma);
        
        teclado.close();
    }
}