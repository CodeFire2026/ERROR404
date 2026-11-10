
package biblioteca;

import java.util.Scanner;

public class Validador {

    private Validador() {
        // Clase utilitaria.
    }

    public static int leerEntero(Scanner sc, String mensaje) {
        while (true) {
            System.out.print(mensaje);
            String texto = sc.nextLine().trim();

            if (texto.matches("\\d+")) {
                try {
                    return Integer.parseInt(texto);
                } catch (NumberFormatException e) {
                    System.out.println("ERROR: el número es demasiado grande.");
                }
            } else {
                System.out.println("ERROR: solo se permiten números.");
            }
        }
    }

    public static double leerDouble(Scanner sc, String mensaje) {
        while (true) {
            System.out.print(mensaje);
            String texto = sc.nextLine().trim().replace(',', '.');

            try {
                return Double.parseDouble(texto);
            } catch (NumberFormatException e) {
                System.out.println("ERROR: ingrese un número válido.");
            }
        }
    }

    public static String leerTexto(Scanner sc, String mensaje) {
        while (true) {
            System.out.print(mensaje);
            String texto = sc.nextLine().trim();

            if (!texto.isEmpty()) {
                return texto;
            }

            System.out.println("ERROR: el texto no puede estar vacío.");
        }
    }

    public static int leerDni(Scanner sc) {
        while (true) {
            int dni = leerEntero(sc, "Ingrese su DNI: ");

            if (dni >= 1_000_000 && dni <= 99_999_999) {
                return dni;
            }

            System.out.println("ERROR: el DNI debe tener entre 7 y 8 dígitos.");
        }
    }
}
