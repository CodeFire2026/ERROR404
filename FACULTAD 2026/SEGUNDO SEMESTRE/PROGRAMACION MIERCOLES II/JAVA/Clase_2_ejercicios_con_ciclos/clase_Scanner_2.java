package Clase_2_ejercicios_con_ciclos;

import java.util.Scanner;

/*Ejercicio2: Leer un numero e indicar si es positivo o negativo. El proceso se repite hasta que se introduzca un numero cero */

public class clase_Scanner_2 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite un número: ");
        var numero = Integer.parseInt(entrada.nextLine());
        while(numero != 0){
            if(numero > 0){
                System.out.println("El número "+numero+" es POSITIVO");
            }
            else{
                System.out.println("El número "+numero+" es NEGATIVO");
            }
            System.out.println("Digite otro número: ");
            numero = Integer.parseInt(entrada.nextLine());
        }
        System.out.println("El número "+numero+" finaliza el programa");

        entrada.close(); // Cierra el Scanner al finalizar
    }
}