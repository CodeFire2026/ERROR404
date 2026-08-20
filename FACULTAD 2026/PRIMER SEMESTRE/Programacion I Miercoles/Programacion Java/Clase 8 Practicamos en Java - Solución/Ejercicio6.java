package Clase_8;

import java.util.Scanner;

public class Ejercicio6 {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        // Pedir los dólares de Guillermo (N)
        System.out.print("Ingrese la cantidad de dinero que tiene Guillermo (N): ");
        double guillermo = teclado.nextDouble();

        // Calcular lo que tiene Luis
        double luis = guillermo / 2;

        // Calcular lo que tiene Juan
        double juan = (luis + guillermo) / 2;

        // Calcular el total entre los tres
        double total = guillermo + luis + juan;

        // Mostrar resultados
        System.out.println("Dinero de Guillermo: $" + guillermo);
        System.out.println("Dinero de Luis: $" + luis);
        System.out.println("Dinero de Juan: $" + juan);
        System.out.println("El total de dinero entre los tres es: $" + total);

        teclado.close();
    }
}