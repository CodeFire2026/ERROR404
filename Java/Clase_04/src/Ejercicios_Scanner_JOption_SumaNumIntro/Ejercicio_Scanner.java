/*Ejercicio 6: Pedir números hasta que se teclee un 0, 
mostrar la suma de todos los números introducidos.
*/
package Ejercicios_Scanner_JOption_SumaNumIntro;

import java.util.Scanner;

public class Ejercicio_Scanner {
    public static void main(String[] args) {
        var entrada = new Scanner(System.in);
        var suma = 0;

        System.out.print("Digite un número (0 para salir): ");
        var numero = entrada.nextInt();

        while (numero != 0) {
            suma += numero;
            System.out.print("Digite otro número (0 para salir): ");
            numero = entrada.nextInt();
        }

        System.out.println("La suma de todos los números introducidos es: " + suma);
    }
}