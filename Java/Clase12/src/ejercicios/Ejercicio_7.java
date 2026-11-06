/* Ejercicio 15: Leer 10 enteros ordenados crecientemente. Leer N y buscarlo en
la tabla. Se debe msotrar la posicion en que se encuentra. Si no esta, indicarlo
con un mensaje.
 */

package ejercicios;

import java.util.Scanner;

public class Ejercicio_7 {
    public static void main(String[] args) {
        
        Scanner entrada = new Scanner(System.in);
        int arreglo[] = new int[10];
        boolean creciente = true;
        int numero, numero2 = 0;
        
        System.out.println("Completar el arreglo: ");
        do {
            for (int i = 0; i < 10; i++) {
                System.out.println(i + "- Ingrese un numero: ");
                arreglo[i] = entrada.nextInt();
            }
            
            for (int i = 0; i < 9; i++) {
                if (arreglo[i] < arreglo[i+1]) {
                    creciente = true;
                }
                if (arreglo[i] > arreglo[i+1]){
                    creciente = false;
                    break;
                }
            }
            
            if (creciente == false){
                System.out.println("\n El arreglo esta desordenado, vuelva a ingresarlo");
            }
            
        } while (creciente == false);
        
        System.out.println("\n Ingrese un numero para buscar en el arreglo: ");
        numero = entrada.nextInt();
        
        int i = 0;
        while(i < 10 && arreglo[i] < numero){
            i++;
        }
        
        if(i == 10){
            System.out.println("\n Numero NO encontrado");
        }
        else{
            if (arreglo[i] == numero){
                System.out.println("\n Numero encontrado en la posicion: " + i);
            }
            else{
                System.out.println("Numero NO encontrado");
            }
        }
        System.out.println();
        
    }
}
