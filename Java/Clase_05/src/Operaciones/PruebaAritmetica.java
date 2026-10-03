package Operaciones;


public class PruebaAritmetica {
    public static void main( String[] args){/*Variables locales*/
        /*var a = 10; /*Variables locales*/
        /*int b = 7; /*Memoria stack*/
      /*  miMetodo();/*Llamamos el metodo nuevo*/
        
        Aritmetica aritmetica1 = new Aritmetica();
        aritmetica1.a = 3;
        aritmetica1.b = 7;
        aritmetica1.sumarNumeros();
        //Para almacenar un objeto los atributos se utiliza la memoria heap*/
        int resultado = aritmetica1.sumarConRetorno();
        System.out.println("resultado = " + resultado);
        
        resultado = aritmetica1.sumarConArgemuntos(12,26);
        System.out.println("Resultado usando argumentos = " + resultado);
    }

    private static void miMetodo() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
/*este constructor apunta a los atributos que hemos contruído en esta clase*/
class Persona{
    /*creamos una clase default dentro de otro paquete*/
    String nombre;
    String apellido;
    
    Persona(String nombre, String apellido){
        this.nombre = nombre;
        this.apellido = apellido; 
    }
    
}