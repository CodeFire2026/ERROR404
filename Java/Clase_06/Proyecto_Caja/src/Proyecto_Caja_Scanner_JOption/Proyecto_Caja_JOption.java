
package Proyecto_Caja_Scanner_JOption;

import javax.swing.JOptionPane;

public class Proyecto_Caja_JOption {
    public static void main(String[] args) {
        int ancho = Integer.parseInt(JOptionPane.showInputDialog("Ingresa el ancho:"));
        
        int alto = Integer.parseInt(JOptionPane.showInputDialog("Ingresa el alto:"));
        
        int profundidad = Integer.parseInt(JOptionPane.showInputDialog("Ingresa la profundidad:"));
        int volumen = ancho * alto * profundidad;
        JOptionPane.showMessageDialog(null, "El volumen de la caja es: " + volumen);
    }   
}
