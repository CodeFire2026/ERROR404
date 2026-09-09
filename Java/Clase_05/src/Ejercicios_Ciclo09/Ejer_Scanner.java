/*
Ejercicio 9: Pedir el día, mes y año de una fecha e indicar si la fecha es correcta 
(suponiendo que todos los meses son de 30 días),
*/
package Ejercicios_Ciclo09;

import java.util.Scanner;

public class Ejer_Scanner {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.println("Digite el día: ");
        int dia = Integer.parseInt(entrada.nextLine());
        
        System.out.println("Digite el mes: ");
        int mes = Integer.parseInt(entrada.nextLine());
        
        System.out.println("Digite el año: ");
        int año = Integer.parseInt(entrada.nextLine());
        
        if ((dia >= 1 && dia <= 30)&& (mes >= 1 && mes <= 12) && (año != 0)){
            System.out.println("La fecha es correcta:"+dia+"/"+mes+"/"+año);
        }else{
            System.out.println("Fecha incorrecta, algunos de los datos es inválido.");
        }
    }

    
}
