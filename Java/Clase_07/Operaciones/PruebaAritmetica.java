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
        
        //System.out.println("aritmetica2 = " + aritmetica2.a);
        //System.out.println("aritmetica2 = " + aritmetica2.b);
        //aritmetica1=null; nunca utilizar esto no se debe hacer
        //System.gc(); metodo para limpiar residuos, es pesado, no utilizar
        Persona persona = new Persona("Ariel", "Betancud");
        System.out.println("persona = " + persona);
        System.out.println("Persona nombre: "+persona.nombre);
        System.out.println("Persona nombre: "+persona.apellido);
                
        //Modularidad creamos un nuevo metodo
    }

    public static void miMetodo(){
            //a = 10; //una variable esta limitada
            System.out.println("Aqui hay un metodo");
        }   
}

/*este constructor apunta a los atributos que hemos contruído en esta clase*/
class Persona{
    /*creamos una clase default dentro de otro paquete*/
    String nombre;
    String apellido;
    
    Persona(String nombre, String apellido){ //constructor
        this.nombre = nombre;
        this.apellido = apellido;
        System.out.println("Objeto persona usando this: "+this); 
    }
    
}

class Imprimir{
    public Imprimir(){
        super(); //El constructor de la clase padre, para reservar memoria
    }

    public void Imprimir(Persona persona){
        System.out.println("Personsa desde la clase imprimir: "+persona);
        System.out.println("Impresion del objeto actual (this): "+this);
    }
}