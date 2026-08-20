import java.util.Scanner;

public class Ejercicios1 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        double nota1, nota2, nota3, promedio;

        System.out.println("Digite las 3 calificaciones: ");
        nota1 = entrada.nextDouble();
        nota2 = entrada.nextDouble();
        nota3 = entrada.nextDouble();

        promedio = (nota1 + nota2 + nota3) / 3;

        if (promedio >= 70) {
            System.out.println("El alumno está aprobado con: " + promedio);
        } else {
            System.out.println("El alumno está desaprobado con: " + promedio);
        }

        // PONGO ESTA LÍNEA PARA CERRAR EL CANAL:
        entrada.close();
    }
}