import java.util.Scanner; 
// Importa Scanner para poder leer datos desde el teclado
public class TiendaLibros {
    // Clase principal del programa
    public static void main(String[] args) {
        // Método principal. El programa empieza acá
        Scanner teclado = new Scanner(System.in);
        // Creamos un objeto Scanner llamado "teclado"
        // Sirve para ingresar datos por teclado
        // Declaración de variables
        String nombre;          // Guarda el nombre del libro
        int id;                 // Guarda el ID del libro
        double precio;          // Guarda el precio del libro
        boolean envioGratis;   // Guarda true o false según el envío
        // Mensaje inicial
        System.out.println("Ingrese los datos del libro");
        // Pedimos el nombre del libro
        System.out.print("Nombre: ");
        nombre = teclado.nextLine();
        // nextLine() lee texto completo
        // Pedimos el ID
        System.out.print("ID: ");
        id = teclado.nextInt();
        // nextInt() lee números enteros
        // Pedimos el precio
        System.out.print("Precio: ");
        precio = teclado.nextDouble(); 
        // nextDouble() lee números decimales
        // Preguntamos si el envío es gratuito
        System.out.print("Envio gratuito? (true/false): ");
        envioGratis = teclado.nextBoolean();
        // nextBoolean() lee true o false
        // Mostramos los datos ingresados
        System.out.println("\n--- DATOS ---");
        System.out.println("Nombre: " + nombre);
        // Muestra el nombre del libro
        System.out.println("ID: " + id);
        // Muestra el ID
        System.out.println("Precio: " + precio);
        // Muestra el precio
        System.out.println("Envio gratuito: " + envioGratis);
        // Muestra si el envío es gratuito o no
        teclado.close();
        // Cerramos el Scanner
    }
} 