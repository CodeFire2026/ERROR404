
public class Eje7parte2 {
    
}
/*
 Ejercicio 11: Diseñar un programa que muestre el producto
 de los 10 primeros números impares con Scanner
*/


import java.util.Scanner;


    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        long producto = 1;

        // Producto de los 10 primeros números impares (1, 3, 5, 7, 9, 11, 13, 15, 17, 19)
        for (int i = 1; i <= 19; i += 2) {
            producto *= i;
        }

        System.out.println("El producto de los 10 primeros números impares es: " + producto);
        entrada.close();
    }
}
/*
 Ejercicio 11con JOptionPane
*/
package ciclos11;

import javax.swing.JOptionPane;

public class Ciclos11 {

    public static void main(String[] args) {
        long producto = 1;

        // Producto de los 10 primeros números impares (1, 3, 5, 7, 9, 11, 13, 15, 17, 19)
        for (int i = 1; i <= 19; i += 2) {
            producto *= i;
        }

        JOptionPane.showMessageDialog(null, "El producto de los 10 primeros números impares es: " + producto);
    }
}