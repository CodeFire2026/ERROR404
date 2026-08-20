import java.util.Scanner;

public class Libro {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            System.out.print("Proporciona el título: ");
            String titulo = scanner.nextLine();
            
            System.out.print("Proporciona el autor: ");
            String autor = scanner.nextLine();
            
            System.out.println(titulo + " fue escrito por " + autor);
        } // Se cierra solo acá
    }
}