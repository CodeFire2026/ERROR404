
package biblioteca;

import java.util.ArrayList;
import java.util.List;

public class Usuario {
    private String nombre;
    private int dni;
    private int edad;
    private final List<Libro> librosPrestados;

    public Usuario(String nombre, int dni, int edad) {
        this.nombre = nombre;
        this.dni = dni;
        this.edad = edad;
        this.librosPrestados = new ArrayList<>();
    }

    public String getNombre() {
        return this.nombre;
    }

    public int getDni() {
        return this.dni;
    }

    public int getEdad() {
        return this.edad;
    }

    public List<Libro> getLibrosPrestados() {
        return this.librosPrestados;
    }

    
    
    public boolean tienePrestado(Libro libro) {
        return this.librosPrestados.contains(libro);
    }

    public void agregarPrestamo(Libro libro) {
        librosPrestados.add(libro);
    }

    public boolean devolverLibro(Libro libro) {
        return this.librosPrestados.remove(libro);
    }

    
    
    @Override
    public String toString() {
        return "Nombre: " + nombre + " | DNI: " + dni + " | Edad: " + edad;
    }
}
