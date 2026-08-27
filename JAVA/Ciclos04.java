
package Ciclos04;

import java.util.Scanner;

public class Ciclos04 {

    public static void main(String[] args) {

        Scanner teclado = new Scanner(System.in);

        int numero;
        int contador = 0;

        System.out.print("Ingrese un número: ");
        numero = teclado.nextInt();

        while (numero >= 0) {
            contador++;

            System.out.print("Ingrese otro número: ");
            numero = teclado.nextInt();
        }

        System.out.println("Se introdujeron " + contador + " números.");

        teclado.close();
    }
}    

/*
package Ciclos04;

import javax.swing.JOptionPane;

public class Ciclos04 {

    public static void main(String[] args) {

        int numero;
        int contador = 0;

        numero = Integer.parseInt(
                JOptionPane.showInputDialog("Ingrese un número:")
        );

        while (numero >= 0) {
            contador++;

            numero = Integer.parseInt(
                    JOptionPane.showInputDialog("Ingrese otro número:")
            );
        }

        JOptionPane.showMessageDialog(
                null,
                "Se introdujeron " + contador + " números."
        );
    }
}*/