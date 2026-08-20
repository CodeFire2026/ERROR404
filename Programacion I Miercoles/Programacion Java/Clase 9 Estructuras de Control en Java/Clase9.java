public class Clase9 {
    public static void main(String[] args) {
        
        var condicion = false;
        
        if (condicion) {
            System.out.println("Condición Verdadera");
        } 
        else {
            System.out.println("Condición Falsa");
        }
        
        var numero = 2;
        var numeroTexto = "Numero desconocido";
        
        if (numero == 1) {
            numeroTexto = "Numero uno";
        }
        else if (numero == 2){
            numeroTexto = "Numero dos";
        }
        else if (numero == 3){
            numeroTexto = "Numero tres";
        }
        else if (numero == 4){
            numeroTexto = "Numero cuatro";
        }
        else {
            numeroTexto = "Numero no encontrado";
        }
        
        System.out.println("El numero es: " + numeroTexto);
    }
}