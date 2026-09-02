/*
Ejercicio 6: Pedir números hasta que se teclee un 0, 
mostrar la suma de todos los números introducidos.
 */
package Ejercicios_Scanner_JOption;

import javax.swing.JOptionPane;

public class Ejercicio_JOption {
    public static void main(String[] args) {
        var suma = 0;

        var entradaTexto = JOptionPane.showInputDialog("Digite un número (0 para salir):");
        var numero = Integer.parseInt(entradaTexto);

        while (numero != 0) {
            suma += numero;
            entradaTexto = JOptionPane.showInputDialog("Digite otro número (0 para salir):");
            numero = Integer.parseInt(entradaTexto);
        }

        JOptionPane.showMessageDialog(null, "La suma de todos los números introducidos es: " + suma);
    }
}
