
package PedirNro;

import java.util.Scanner;

public class Ejercicio_Scanner {
    public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
        int suma = 0;
        int numero;

        System.out.println("--- Ingresa 10 números ---");

        for (int i = 1; i <= 10; i++) {
            System.out.print("Digite el número " + i + ": ");
            numero = scanner.nextInt();
            suma += numero; // Acumulamos la suma
        }

        System.out.println("\nLa suma total de los 10 números es: " + suma);
    }
}
