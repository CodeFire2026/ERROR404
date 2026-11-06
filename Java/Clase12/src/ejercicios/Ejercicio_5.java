/* Ejercicio 13: Leer 10 enteros en una tabla. Guardar en otra tabla los 
elementos pares de la primera, y a continuacion lso elementos impares.
 */

package ejercicios;

import java.util.Scanner;

public class Ejercicio_5 {
    public static void main(String[] args) {
        
        Scanner entrada = new Scanner(System.in);
        int arreglo[] = new int[10];
        int conteo_pares = 0, conteo_impares = 0;
        
        System.out.println();
        
        for (int i = 0; i < 10; i++) {
            System.out.println(i + "- Ingrese un numero: ");
            arreglo[i] = entrada.nextInt();
            
            if (arreglo[i] % 2 == 0){
                conteo_pares++;
            }
            else{
                conteo_impares++;
            }
        }
        
        int pares[] = new int[conteo_pares];
        int impares[] = new int[conteo_impares];
            
        conteo_pares = 0;
        conteo_impares = 0;
        
        for(int i = 0; i < 10; i++){
            if (arreglo[i] % 2 == 0){
                pares[conteo_pares] = arreglo[i];
                conteo_pares++;
            }
            else{
                impares[conteo_impares] = arreglo[i];
                conteo_impares++;
            }
        }        
        
            
        System.out.println("\n Arreglo ingresado: ");
        for(int i = 0; i < 10; i++){
            System.out.println(arreglo[i] + " - ");
        }
        
        System.out.println("\n Arreglo pares: ");
        for(int i = 0; i < conteo_pares; i++){
            System.out.println(pares[i] + " - ");
        }
        
        System.out.println("\n Arreglo impares: ");
        for(int i = 0; i < conteo_impares; i++){
            System.out.println(impares[i] + " - ");
        }
        System.out.println();
    }
}
