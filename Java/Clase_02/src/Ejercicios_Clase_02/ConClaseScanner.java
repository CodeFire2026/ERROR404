/* Ejercicio 2: Leer un numero e indicar si es positivo o negativo. El proceso
se repetira hasta que se introduzca un 0 (cero).
Con la clase "Scanner"
*/
package Ejercicios_Clase_02;

import java.util.Scanner;

public class ConClaseScanner {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese un numero: ");
        var numero = Integer.parseInt(entrada.nextLine());
        
        while(numero != 0){
            if(numero > 0){
                System.out.println("El numero "+ numero + "es POSITIVO");
            }
            else{
                System.out.println("El numero "+ numero +"es NEGATIVO");
            }
            System.out.println("Digite otro numero");
            numero = Integer.parseInt(entrada.nextLine());
        }
        System.out.println("El numero "+ numero +" finaliza el programa");
    }
}

