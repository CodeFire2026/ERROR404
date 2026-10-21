
package test;

public class TestArreglos {
    public static void main(String[] args) {  // Lado der. instanciamos un objeto de tipo object
        int edades[] = new int [3];  // En el lado izq. declaramos la variable
        System.out.println("edades = " + edades);
        
        edades[0] = 17;
        System.out.println("edades 0 = " + edades[0]);
        
        //TAREA
        edades[1] = 24;
        System.out.println("edades 1 = " + edades[1]);
        
        edades[2] = 67;
        System.out.println("edades 2 = " + edades[2]);
        
        //edades[3] = 7;  // Fuera de rango, error en tiempo de ejecucion
        
        for(int i = 0; i < edades.length; i++){
            System.out.println("edades y sus elementos " + i + ": " + edades[i]);
        }
    }
}
