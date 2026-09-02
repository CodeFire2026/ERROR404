
package Clase_04;

public class PruebaPersona {
    public static void main(String[] args) {
        Persona persona1 = new Persona(); //Llamamos al contructor
        persona1.nombre = "Gustavo";// El valor hexadecimal nomalmente empieza con 0x
        persona1.apellido = "Rios";
        persona1.obtenerInformacion();
        
        Persona persona2 = new Persona();
        System.out.println("persona2 = " + persona2);
        System.out.println("persona1 = " + persona1);
        persona2.obtenerInformacion();
        persona2.nombre = "Sebastian";
        persona2.apellido = "Sanchez";
        persona2.obtenerInformacion();
    }
}
