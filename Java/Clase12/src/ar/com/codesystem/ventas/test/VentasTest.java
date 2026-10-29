
package ar.com.codesystem.ventas.test;

import ar.com.codesystem.clase12.*;

public class VentasTest {
    public static void main(String[] args) {
        Producto producto1 = new Producto("Pantalon", 9000.0);
        Producto producto2 = new Producto("Campera", 31000.0);
        // TAREA
        Producto producto3 = new Producto("Sueter", 54000.0);
        Producto producto4 = new Producto("Medias", 2000.0);
        Producto producto5 = new Producto("Gorra", 7200.0);
        Producto producto6 = new Producto("Zapatillas Nike", 126000.0);
        Producto producto7 = new Producto("Remera", 12000.0);
        Producto producto8 = new Producto("Camisa", 23000.0);
        Producto producto9= new Producto("Buzo", 68000.0);
        Producto producto10 = new Producto("Zapatillas DC", 110000.0);
        
        Orden orden1 = new Orden();
        // Agregamos productos al arreglo
        orden1.agregarProducto(producto1);
        orden1.agregarProducto(producto2);
        orden1.agregarProducto(producto3);
        orden1.agregarProducto(producto4);
        orden1.agregarProducto(producto5);
        orden1.agregarProducto(producto6);
        orden1.agregarProducto(producto7);
        orden1.agregarProducto(producto8);
        orden1.agregarProducto(producto9);
        orden1.agregarProducto(producto10);
        orden1.mostrarOrden();
        
        // TAREA:
        // Crear mas objetos de tipo Producto
        // Crear mas objetos de tipo Orden
    }
}
