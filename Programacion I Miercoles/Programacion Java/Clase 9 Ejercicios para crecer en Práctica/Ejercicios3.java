import java.util.Scanner;

public class Ejercicios3 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        double num1, num2, resultado;

        System.out.println("Digite dos números: ");
        num1 = entrada.nextDouble();
        num2 = entrada.nextDouble();

        if (num1 == num2) {
            resultado = num1 * num2; // Si son iguales multiplicamos
        } else if (num1 > num2) {
            resultado = num1 - num2; // Si el primero es mayor los restamos
        } else {
            resultado = num1 + num2; // Caso contrario los sumamos
        }

        System.out.println("El resultado es: " + resultado);

        // PONGO ESTA LÍNEA PARA CERRAR EL CANAL:
        entrada.close();
    }

}