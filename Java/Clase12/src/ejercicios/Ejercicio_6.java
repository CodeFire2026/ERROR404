/* Ejercicio 14: Leer dos series de 10 enteros, que estaran ordenados crecientemente.
Copiar(fusionar) las dos tablas en una tercera, de forma que sigan ordenados.
*/

package ejercicios;

import java.util.Scanner;

public class Ejercicio_6 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a[] = new int[10];
        int b[] = new int[10];
        int c[] = new int[20];
        boolean creciente = true;
        
        System.out.println("Completar el primer arreglo: ");
        do{
            for (int i = 0; i < 10; i++) {
                System.out.println((i+1) + "- Ingrese un numero: ");
                a[i] = entrada.nextInt();
            }
            
            for (int i = 0; i < 9; i++) {
                if (a[i] < a[i+1]) {
                    creciente = true;
                }
                if (a[i] > a[i+1]){
                    creciente = false;
                    break;
                }
            }
            if (creciente == false) {
                System.out.println("\n El arreglo esta desordenado, digite nuevamente: ");
            }
            
        }while(creciente == false);
        
        System.out.println("Completar el segundo arreglo: ");
        do{
            for (int i = 0; i < 10; i++) {
                System.out.println((i+1) + "- Ingrese un numero: ");
                b[i] = entrada.nextInt();
            }
            
            for (int i = 0; i < 9; i++) {
                if (b[i] < b[i+1]) {
                    creciente = true;
                }
                if (b[i] > b[i+1]){
                    creciente = false;
                    break;
                }
            }
            if (creciente == false) {
                System.out.println("\n El arreglo esta desordenado, digite nuevamente: ");
            }
        }while(creciente == false);
        
        int i = 0;  // Iterador para el arreglo A
        int j = 0;  // Iterador para el arreglo B
        int k = 0;  // Iterador para el arreglo C
        
        while(i < 10 && j < 10){
            if (a[i] < b[j]){  // Si el elemento de A es menor de B
                c[k] = a[i];  // copiamos el elemento de A
                i++;  // Avanzamos una posicion en A
            }
            else{
                c[k] = b[j]; // Copiamos el elemento de B
                j++;  // Avanzamos una posicion mas en B
            }
            k++;  // Avanzamos una posicion mas en C
        }
        
        // Cuando salimos del while es porque un arreglo (a o b), se a copiado completamente
        if (i == 10){  // Significa que ya copiamos todo el arreglo a, falta el b
            while(j < 10){  // Mientras el iterador sea menor a 10
                c[k] = b[j];  // Copiamos el elemento de B en C
                j++;  // Avanzamos una posicion en B
                k++;  // Avanzamos una posicion en C
            }
        }
        else{  // Significa que ya copiamos todo el arreglo B, falta el A
            while(i < 10){
                c[k] = a[i];
                i++;
                k++;
            }
                
        }
        
        System.out.println("\n El arreglo completo es: ");
        for(k = 0; k < 20; k++){
            System.out.println(c[k] + " - ");
        }
        System.out.println();
        
    }
}
