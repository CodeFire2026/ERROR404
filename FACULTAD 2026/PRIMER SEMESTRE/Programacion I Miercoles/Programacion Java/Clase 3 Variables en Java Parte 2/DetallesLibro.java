import java.util.Scanner;

public class DetallesLibro {

    public static void main(String[] args) {
        // 4. Inicializamos la clase Scanner para poder leer el teclado
        Scanner entrada = new Scanner(System.in);
        
        // 1. Pregunta o pide el nombre del libro
        System.out.println("Proporciona el nombre del libro: ");
        var nombreLibro = entrada.nextLine();
        
        // 2. Pregunta o pide el autor del libro
        System.out.println("Proporciona el autor del libro: ");
        var nombreAutor = entrada.nextLine();
        
        // 3. Muestra por consola la información solicitada
        System.out.println(nombreLibro + " fue escrito por " + nombreAutor);
        
        // Cerramos el scanner al final por buena práctica
        entrada.close();
    }
}