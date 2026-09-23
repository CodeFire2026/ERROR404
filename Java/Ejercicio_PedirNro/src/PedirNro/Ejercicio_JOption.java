
package PedirNro;

import javax.swing.JOptionPane;

public class Ejercicio_JOption {
    public static void main(String[] args) {
        int suma = 0;
        int numero;

        for (int i = 1; i <= 10; i++) {
            numero = Integer.parseInt(JOptionPane.showInputDialog("Digite el número " + i + " de 10:"));
            suma += numero; // Acumulamos la suma
        }

        JOptionPane.showMessageDialog(null, "La suma total de los 10 números es: " + suma);
    }
}
