/*
EJERCICIO 12: Pedir un número y calcular su factorial
Hacerlo con las dos clases, Scanner y JOptionPane
 */
package Ejercicio7;

import javax.swing.JOptionPane;


public class Ejercicio7_3_Ciclos_12_ClaseJOptionPane {
    public static void main(String[] args) {

        int numero = Integer.parseInt(
                JOptionPane.showInputDialog("Ingrese un número:")
        );

        int factorial = 1;

        for (int i = 1; i <= numero; i++) {
            factorial = factorial * i;
        }

        JOptionPane.showMessageDialog(
                null,
                "El factorial es: " + factorial
        );
    }
}
