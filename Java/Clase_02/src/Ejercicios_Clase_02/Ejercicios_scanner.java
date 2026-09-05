/* Ejerciciio 3: Leer números hasta que se introduzca un cero
para cada uno indicar si es par o impar.
Primero lo haremos con la clase Scanner
luego con la casle JOptionPane
*/
package Ejercicios_Clase_02;

import java.util.Scanner;


public class Ejercicios_scanner {
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

           
            System.out.println("Digite otro número (0 para salir): ");
            numero = Integer.parseInt(entrada.nextLine());
        } 

        
        System.out.println("El programa ha finalizado porque se ingresó un 0.");
    }
}
