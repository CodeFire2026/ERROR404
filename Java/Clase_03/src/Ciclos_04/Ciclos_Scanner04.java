/*
EJERCICIO 4: Pedir números hasta que se teclee uno negativo, 
y mostrar cuántos números se han introducido.
Lo hacemos primero con la clase Scanner
Luego lo hacemos con la clase JOptionPane
 */
package Ciclos_04;

import java.util.Scanner;

public class Ciclos_Scanner04 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int numero;
        int contador = 0;
        
        System.out.println("Digite un número: ");
        numero =  Integer.parseInt(entrada.nextLine());
      while(numero >= 0){
           contador++;
          
          System.out.println("Digite otro número: ");
          numero = Integer.parseInt(entrada.nextLine());
      }
        System.out.println("Se han introcido "+contador+" números");
    }
}
