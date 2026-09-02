/*Ejercicio 7: Pedir números hasta que se introduzca
uno negativo y calcular la media
*/
package Ejerciocios_Scanner_JOption_NegYCalcular;

import javax.swing.JOptionPane;

public class Ejercicio_JOption {
    public static void main(String[] args) {
        int numero, suma = 0, conteo = 0;
        double media;
        
        numero = Integer.parseInt(JOptionPane.showInputDialog("Digite un número:"));
        
        while (numero >= 0) {
            suma += numero;
            conteo++;
            
            numero = Integer.parseInt(JOptionPane.showInputDialog("Digite otro número:"));
        }
        
        if (conteo == 0) {
            JOptionPane.showMessageDialog(null, "La división entre cero no existe / No se ingresaron números positivos.");
        } else {
            media = (double) suma / conteo;
            JOptionPane.showMessageDialog(null, "La media de los números ingresados es: " + media);
        }
    }
}
