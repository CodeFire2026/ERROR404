/* Ejercicio 11: Leer 5 elementos numericos que se introduciran ordenados
de forma creciente. Estos los guardaremos en una tabla de tamaño 10. Leer 
un numero N, e insertarlo en el lugar adecuado para que la tabla continue
ordenada.
 */

package ejercicios;

import java.util.Scanner;

public class Ejercicio_3 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        int arreglo[] = new int[10];
        boolean creciente = true;
        int numero, sitio_num = 0, j = 0;
        
        System.out.println("Llenar el arreglo: ");
        do{
            for (int i = 0; i < 5; i++) {
                System.out.println((i+1) + "- Ingrese un numero: ");
                arreglo[i] = entrada.nextInt();
            }
            
            for (int i = 0; i < 4; i++) {
                if(arreglo[i] < arreglo[i+1]){
                    creciente = true;
                }
                if(arreglo[i] > arreglo[i+1]){
                    creciente = false;
                    break;
                }
            }
            
            if(creciente == false){
                System.out.println("\n El arreglo no esta ordenado en forma creciente, vuelva a digitar \n");
            }
            
        }while(creciente == false);
        
        System.out.println("Digite un numero para agregarlo al arreglo: ");
        numero = entrada.nextInt();
        
        while(arreglo[j] < numero && j < 5){
            sitio_num++;
            j++;
        }
        
        for (int i = 4; i < sitio_num; i--){
            arreglo[i+1] = arreglo[i];
        }
        
        arreglo[sitio_num] = numero;
        
        System.out.println("\n El arreglo queda de la sgte manera: ");
        for (int i = 0; i < 6; i++){
            System.out.println(arreglo[i] + " - ");
        }
        System.out.println();
    }
}
