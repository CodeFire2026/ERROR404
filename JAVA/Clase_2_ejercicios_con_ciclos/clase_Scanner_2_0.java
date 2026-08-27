package Clase_2_ejercicios_con_ciclos;

/*Ejercicio2: Leer un numero e indicar si es positivo o negativo. El proceso se repite hasta que se introduzca un numero cero */

import javax.swing.JOptionPane;

public class clase_Scanner_2_0 {
    public static void main(String[] args) {
        var numero = Integer.parseInt(JOptionPane.showInputDialog("Digite un número: "));
        while(numero != 0){
            if(numero > 0){
                JOptionPane.showMessageDialog(null, "El número "+numero+" es POSITIVO");
            }
            else{
                JOptionPane.showMessageDialog(null, "El número "+numero+" es NEGATIVO");
            }
            numero = Integer.parseInt(JOptionPane.showInputDialog("Digite otro número: "));
        }
        JOptionPane.showMessageDialog(null, "El número "+numero+" finaliza el programa");
    }
}
