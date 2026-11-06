/* Ejercicio 5: Leer por teclado dos tablas de 10 numeros enteros y
mezclarlas en una tercera de la forma: el 1° de A, el 1° de B,
el 2° de A, el 2° de B, etc.
 */

package ejercicios;

import java.util.Scanner;

public class Ejercicio_2 {
    public static void main(String[] args) {
        
        Scanner entrada = new Scanner(System.in);
        int tabla1[] = new int[10];
        int tabla2[] = new int[10];
        int tabla3[] = new int[20];
        
        System.out.println("Ingrese 10 numeros para la PRIMERA tabla");
        // Tabla N°1
        for (int i = 0; i < 10; i++) {
            System.out.println((i + 1) + ". Numeros para la 1° Tabla: ");
            tabla1[i] = entrada.nextInt();
        }
        // Tabla N°2
        System.out.println("Ingrese 10 numeros para la SEGUNDA");
        for (int i = 0; i < 10; i++) {
            System.out.println((i + 1) + ". Numeros para la 2° Tabla: ");
            tabla2[i] = entrada.nextInt();
        }
        
        int j = 0;
        for (int i = 0; i < 10; i++) {
            tabla3[j] = tabla1[i];
            j++;
            tabla3[j] = tabla2[i];
            j++;
        }
        
        System.out.println("Mostramos nuestra tercer tabla: ");
        for (int i = 0; i < 20; i++) {
            System.out.println(tabla3[i] + " ");
        }
        
    }
}
