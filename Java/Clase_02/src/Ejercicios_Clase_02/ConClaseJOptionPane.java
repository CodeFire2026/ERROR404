/* Ejercicio 2: Leer un numero e indicar si es positivo o negativo. El proceso
se repetira hasta que se introduzca un 0 (cero).
Con la clase "JOptionPane"
*/
package Ejercicios_Clase_02;

import javax.swing.JOptionPane;

public class ConClaseJOptionPane {
    public static void main(String[] args) {
        var numero = Integer.parseInt(JOptionPane.showInputDialog("Ingrese un numero: "));
        
        while(numero != 0){
            if(numero > 0){
                System.out.println("El numero "+ numero + "es POSITIVO");
            }
            else{
                System.out.println("El numero "+ numero +"es NEGATIVO");
            }
            System.out.println("Digite otro numero");
            numero = Integer.parseInt(JOptionPane.showInputDialog("Ingrese otro numero: "));
        }
        System.out.println("El numero "+ numero +" finaliza el programa");
    }
    
}
