
import java.util.Scanner;

public class Ciclos05 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        
        // 1. Generar número aleatorio entre 0 y 100
        int numeroSecreto = (int) (Math.random() * 100);
        int numeroUsuario;
        int contadorIntentos = 0;
        
        System.out.println("Juega a adivinar un numero (entre 0 y 100) ");
        
        do {
            System.out.print("Digite un número porfavor: ");
            numeroUsuario = Integer.parseInt(entrada.nextLine());
            contadorIntentos++;
            
            if (numeroUsuario > numeroSecreto) {
                System.out.println("Es menor");
            } else if (numeroUsuario < numeroSecreto) {
                System.out.println("Es mayor");
            } else {
                System.out.println("¡");
            }
            
        } while (numeroUsuario != numeroSecreto);
        
        // Cuando acierta, mostramos los intentos
        System.out.println("Número de intentos realizados: " + contadorIntentos);
        entrada.close();
    }
}