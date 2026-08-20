import java.util.Scanner;

public class EjercicioMayor {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        System.out.println("Digite el primer numero:");
        int num1 = Integer.parseInt(entrada.nextLine());
        
        System.out.println("Digite el segundo numero:");
        int num2 = Integer.parseInt(entrada.nextLine());
        
        // Operador ternario: si num1 es mayor a num2, guarda num1. Si no, guarda num2.
        int mayor = (num1 > num2) ? num1 : num2;
        
        System.out.println("El numero mayor es:");
        System.out.println(mayor);
        
        entrada.close();
    }
}