/* Ejerciciio 3: Leer números hasta que se introduzca un cero
para cada uno indicar si es par o impar.
Primero lo haremos con la clase Scanner
luego con la casle JOptionPane
*/
package Ejercicios_Clase_03;

import java.util.Scanner;


public class Ejercicios_scanner_joptionpane {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int numero;

        System.out.println("Digite un número: ");
        numero = Integer.parseInt(entrada.nextLine());

        while (numero != 0) {
            if (numero % 2 == 0) {
                System.out.println("El número " + numero + " es PAR");
            } else {
                System.out.println("El número " + numero + " es IMPAR");
            }

            // 👇 AHORA SÍ: Dentro del while y después del if-else
            System.out.println("Digite otro número (0 para salir): ");
            numero = Integer.parseInt(entrada.nextLine());
        } // <--- La llave del WHILE va AQUÍ

        // Mensaje final cuando el usuario presiona 0 y sale del ciclo
        System.out.println("El programa ha finalizado porque se ingresó un 0.");
    }
}
