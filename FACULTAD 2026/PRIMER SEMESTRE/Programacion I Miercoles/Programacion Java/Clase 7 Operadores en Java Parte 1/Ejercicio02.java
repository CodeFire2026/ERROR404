import java.util.Scanner;

public class Ejercicio02 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        // 1. Pedimos las horas semanales trabajadas (como entero)
        System.out.println("Digite las horas semanales trabajadas: ");
        int horasTrabajadas = Integer.parseInt(entrada.nextLine());
        
        // 2. Pedimos el valor del salario por hora (con decimales por las dudas)
        System.out.println("Digite el salario por hora: ");
        double salarioPorHora = Double.parseDouble(entrada.nextLine());
        
        // 3. Calculamos el salario total multiplicando ambos valores
        double salarioTotal = horasTrabajadas * salarioPorHora;
        
        // 4. Imprimimos el resultado final en la consola
        System.out.println("\nEl salario total semanal es: $" + salarioTotal);
        
        entrada.close(); // Cerramos el Scanner
    }
}