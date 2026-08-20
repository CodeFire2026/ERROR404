package Clase_2_ejercicios_con_ciclos;

import javax.swing.JOptionPane;

/*Ejercicio1: Leer un numero y mostrar su cuadrado,
repetir el proceso hasta que se introduzca un numero negativo*/

public class clase_Scanner_1_0 {
    public static void main(String[] args) {
        int numero, cuadrado;

        numero = Integer.parseInt(JOptionPane.showInputDialog("Digite un numero: "));
        while (numero >= 0) { //MIENTRAS EL NUMERO SEA IGUAL A CERO O POSITIVO
            cuadrado = (int) Math.pow(numero, 2);
            System.out.println("El numero " + numero + " elevado al cuadrado es: " + cuadrado);
            numero = Integer.parseInt(JOptionPane.showInputDialog("Digite otro numero: "));
        }
    }
}