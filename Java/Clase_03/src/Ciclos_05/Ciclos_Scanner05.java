/*
EJERCICIO 5: Realizar un juego para adivinar un número, para ello
generar un número aleatorio entre 0-100, y luego ir pidiendo 
números indicando "es mayor" o "es menor" según sea mayor o menor
con respecto a N. El proceso termina cuando el usuario acierta 
y mostramos el número de intentos hechos.
 */
package Ciclos_05;

import java.util.Scanner;

public class Ciclos_Scanner05 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        //Generamos un número aleatorio entre 0 y 100
        int numeroAleatorio = (int) (Math.random()*101);
        
        int numero = 0;
        int intentos = 0;
       
        System.out.println("=== JUEGO ADIVINA EL NÚMERO===");
        System.out.println("Adivina un número entre 0 y 100");
        
        do {
          System.out.println("Ingrese un número: ");
          numero = entrada.nextInt();
          
          intentos++;
          
          if(numero < numeroAleatorio){
         System.out.println("El número secreto es MAYOR");
            } else if (numero > numeroAleatorio) {
                System.out.println("El número secreto es MENOR");
            } else {
                System.out.println("¡FELICIDADES! Adivinaste el número.");
                System.out.println("Número de intentos: " + intentos);
            }

        } while (numero != numeroAleatorio);
    }
}
