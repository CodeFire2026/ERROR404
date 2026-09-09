/*
Ejercicio 9: Pedir el día, mes y año de una fecha e indicar si la fecha es correcta 
(suponiendo que todos los meses son de 30 días),
 */
package Ejercicios_Ciclo09;

import javax.swing.JOptionPane;

public class Ejer_JOption {
    public static void main(String[] args) {
        int dia = Integer.parseInt(JOptionPane.showInputDialog("Digite el día: "));
        int mes = Integer.parseInt(JOptionPane.showInputDialog("Digite el mes: "));
        int año = Integer.parseInt(JOptionPane.showInputDialog("Digite el año: "));

        if ((dia >= 1 && dia <= 30) && (mes >= 1 && mes <= 12) && (año != 0)){
            JOptionPane.showMessageDialog(null, "La fecha es correcta: "+dia+"/"+mes+"/"+año);
        } else {
            JOptionPane.showMessageDialog(null, "Fecha incorrecta, alguno de los datos es inválido.");
        }
    }
    
}
