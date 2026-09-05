/*
 EJERCICIO 5: Realizar un juego para adivinar un número, para ello
generar un número aleatorio entre 0-100, y luego ir pidiendo 
números indicando "es mayor" o "es menor" según sea mayor o menor
con respecto a N. El proceso termina cuando el usuario acierta 
y mostramos el número de intentos hechos.
 */
package Ciclos_05;

import javax.swing.JOptionPane;

public class Ciclos_JOption05 {
    public static void main(String[] args) {

        // Generamos un número aleatorio entre 0 y 100
        int numeroAleatorio = (int) (Math.random() * 101);

        int numero;
        int intentos = 0;

        JOptionPane.showMessageDialog(null,"=== JUEGO ADIVINA EL NÚMERO ==="+ "Adivina un número entre 0 y 100");

        do {

            numero = Integer.parseInt(
                    JOptionPane.showInputDialog("Ingrese un número:")
            );

            intentos++;

            if (numero < numeroAleatorio) {

                JOptionPane.showMessageDialog(null,"El número secreto es MAYOR");

            } else if (numero > numeroAleatorio) {

                JOptionPane.showMessageDialog(null,"El número secreto es MENOR");

            } else {

                JOptionPane.showMessageDialog(null,"¡FELICIDADES! Adivinaste el número" + "Número de intentos: " + intentos);
            }

        } while (numero != numeroAleatorio);

    }
}
