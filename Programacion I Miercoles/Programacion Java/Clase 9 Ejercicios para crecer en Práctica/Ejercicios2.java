import java.util.Scanner;

public class Ejercicios2 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        double compra, descuento, precio_final;

        System.out.println("Digite la cantidad a pagar: ");
        compra = entrada.nextDouble();

        if (compra > 100) {
            descuento = compra * 0.2;
        } else {
            descuento = 0;
        }

        precio_final = compra - descuento;
        System.out.println("El precio a pagar es: " + precio_final);

        // PONGO ESTA LÍNEA PARA CERRAR EL CANAL:
        entrada.close();
    }
}