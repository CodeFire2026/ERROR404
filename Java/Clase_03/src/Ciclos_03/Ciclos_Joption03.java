/*
  EJERCICIO 3: Leer números hasta que se introduzca un cero 
Para cada uno indicar si es par o impar.
Primero lo haremos con la clase Scanner.
Luego con la clase JOptionPane
 */
package Ciclos_03;

import javax.swing.JOptionPane;

public class Ciclos_Joption03 {
    public static void main(String[] args) {
      var numero = Integer.parseInt(JOptionPane.showInputDialog("Digite un número: "));
      while(numero != 0){
          if(numero %2 == 0){
              JOptionPane.showMessageDialog(null, "El número "+numero+" es PAR");
          }
          else{
              JOptionPane.showMessageDialog(null, "El número "+numero+" es IMPAR");
          }
          numero = Integer.parseInt(JOptionPane.showInputDialog("Digite otro número: "));
      }
        JOptionPane.showMessageDialog(null, "El número "+numero+" finaliza el programa"); 
    }
}
