import java.util.Scanner;

public class CalificaDia {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("¿Cómo estuvo tu día (1 al 10)?: ");
        int calificacion = scanner.nextInt();
        
        System.out.println("Mi día estuvo de: " + calificacion);
        
        scanner.close(); // <-- Agregá esta línea
    }
}