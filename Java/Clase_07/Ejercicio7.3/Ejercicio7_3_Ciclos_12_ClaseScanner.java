/*
EJERCICIO 12: Pedir un número y calcular su factorial
Hacerlo con las dos clases, Scanner y JOptionPane
 */

package Ejercicio7;

import java.util.Scanner;


public class Ejercicio7_3_Ciclos_12_ClaseScanner {
    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);

        System.out.print("Ingrese un número: ");
        int numero = teclado.nextInt();

        int factorial = 1;

        for (int i = 1; i <= numero; i++) {
            factorial = factorial * i;
        }

        System.out.println("El factorial es: " + factorial);
    }
}