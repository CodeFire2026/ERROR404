/*Ejercicio 7: Pedir números hasta que se introduzca
uno negativo y calcular la media
*/
package Ejerciocios_Scanner_JOption_NegYCalcular;


import java.util.Scanner;

public class Ejercicio_Scanner {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int numero, suma = 0, conteo = 0;
        double media;
        
        System.out.print("Digite un número: ");
        numero = entrada.nextInt();
        
        while (numero >= 0) {
            suma += numero;
            conteo++;
            
            System.out.print("Digite otro número: ");
            numero = entrada.nextInt();
        }
        
        if (conteo == 0) {
            System.out.println("La división entre cero no existe / No se ingresaron números positivos.");
        } else {
            media = (double) suma / conteo;
            System.out.println("La media de los números ingresados es: " + media);
        }
    }
}
