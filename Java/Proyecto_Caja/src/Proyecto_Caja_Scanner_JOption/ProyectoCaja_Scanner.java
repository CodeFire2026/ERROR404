/*Ejercicio01Proyecto_Caja con las especificaciones de volumen
ancho * alto * profundidad
*/
package Proyecto_Caja_Scanner_JOption;

import java.util.Scanner;

public class ProyectoCaja_Scanner {
     public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("--- Cálculo del Volumen de una Caja ---");

        // Solicitamos y leemos los valores como enteros (int)
        System.out.print("Ingresa el ancho: ");
        int ancho = scanner.nextInt();

        System.out.print("Ingresa el alto: ");
        int alto = scanner.nextInt();

        System.out.print("Ingresa la profundidad: ");
        int profundidad = scanner.nextInt();

        // Aplicamos la fórmula: volumen = ancho * alto * profundidad
        int volumen = ancho * alto * profundidad;

        // Mostramos el resultado
        System.out.println("El volumen de la caja es: " + volumen);
     }
}
