
package biblioteca;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;

public class Biblioteca {
    private final List<Libro> libros;
    private final List<Usuario> usuarios;
    private final List<Prestamo> prestamos;

    public Biblioteca() {
        libros = new ArrayList<>();
        usuarios = new ArrayList<>();
        prestamos = new ArrayList<>();
        cargarDatosIniciales();
    }

    private void cargarDatosIniciales() {
        libros.add(new Libro("El extranjero", 10, 5, 8571));
        libros.add(new Libro("Fausto", 11, 5, 12000));
        libros.add(new Libro("Odisea", 12, 5, 15000));
        libros.add(new Libro("Gaturro", 13, 5, 18000));
        libros.add(new Libro("Hamlet", 14, 5, 22857));

        usuarios.add(new Usuario("José Pérez", 35791357, 23));
        usuarios.add(new Usuario("Carlos Sánchez", 12345678, 83));
        usuarios.add(new Usuario("Susuna González", 42684286, 19));
        usuarios.add(new Usuario("Ricardo Gómez", 95654321, 18));
    }

    public Usuario buscarUsuarioPorDni(int dni) {
        for (Usuario usuario : usuarios) {
            if (usuario.getDni() == dni) {
                return usuario;
            }
        }
        return null;
    }

    public Libro buscarLibroPorCodigo(int codigo) {
        for (Libro libro : libros) {
            if (libro.getCodigo() == codigo) {
                return libro;
            }
        }
        return null;
    }

    public Libro buscarLibroPorNombre(String nombre) {
        for (Libro libro : libros) {
            if (libro.getTitulo().equalsIgnoreCase(nombre)) {
                return libro;
            }
        }
        return null;
    }

    public boolean registrarUsuario(String nombre, int dni, int edad) {
        if (buscarUsuarioPorDni(dni) != null || edad < 18) {
            return false;
        }

        usuarios.add(new Usuario(nombre, dni, edad));
        return true;
    }

    public boolean registrarLibro(String titulo, int codigo, double precio, int stock) {
        if (buscarLibroPorCodigo(codigo) != null) {
            return false;
        }

        libros.add(new Libro(titulo, codigo, stock, precio));
        return true;
    }

    public boolean realizarPrestamo(Usuario usuario, Libro libro) {
        if (usuario == null || libro == null) {
            return false;
        }

        if (usuario.tienePrestado(libro)) {
            return false;
        }

        if (!libro.prestar()) {
            return false;
        }

        usuario.agregarPrestamo(libro);
        prestamos.add(new Prestamo(usuario, libro, LocalDate.now()));
        return true;
    }

    public double devolverLibro(Usuario usuario, Libro libro, LocalDate fechaDevolucion) {
        if (usuario == null || libro == null || !usuario.tienePrestado(libro)) {
            return -1;
        }

        Prestamo prestamoEncontrado = null;

        for (Prestamo prestamo : prestamos) {
            if (prestamo.getUsuario() == usuario
                    && prestamo.getLibro() == libro
                    && prestamo.getFechaDevolucion() == null) {
                prestamoEncontrado = prestamo;
                break;
            }
        }

        if (prestamoEncontrado == null) {
            return -1;
        }

        prestamoEncontrado.registrarDevolucion(fechaDevolucion);
        usuario.devolverLibro(libro);
        libro.aumentarStock();

        double multa = prestamoEncontrado.getMulta();
        prestamos.remove(prestamoEncontrado);

        return multa;
    }

    public void mostrarLibros() {
        System.out.println("\n===== LISTA DE LIBROS =====");

        if (libros.isEmpty()) {
            System.out.println("No hay libros registrados.");
            return;
        }

        for (Libro libro : libros) {
            System.out.println(libro);
        }
    }

    public void buscarPorCodigo(int codigo) {
        Libro libro = buscarLibroPorCodigo(codigo);

        if (libro != null) {
            System.out.println("\nLibro encontrado:");
            System.out.println(libro);
        } else {
            System.out.println("No existe un libro con ese código.");
        }
    }

    public void buscarPorNombre(String nombre) {
        Libro libro = buscarLibroPorNombre(nombre);

        if (libro != null) {
            System.out.println("\nLibro encontrado:");
            System.out.println(libro);
        } else {
            System.out.println("No existe un libro con ese nombre.");
        }
    }

    public void mostrarMatrizPrestamos() {
        System.out.println("\n========== MATRIZ DE PRÉSTAMOS ==========");
        System.out.println("X = prestado | - = sin préstamo\n");

        System.out.printf("%-22s", "Usuario");
        for (Libro libro : libros) {
            System.out.printf("| %-5d ", libro.getCodigo());
        }
        System.out.println("|");

        System.out.println("-".repeat(24 + libros.size() * 9));

        for (Usuario usuario : usuarios) {
            System.out.printf("%-22s", usuario.getNombre());

            for (Libro libro : libros) {
                String marca = usuario.tienePrestado(libro) ? "X" : "-";
                System.out.printf("| %-5s ", marca);
            }

            System.out.println("|");
        }
    }

    public void mostrarPrestamosActivos() {
        System.out.println("\n===== PRÉSTAMOS ACTIVOS =====");

        boolean hayPrestamos = false;

        for (Prestamo prestamo : prestamos) {
            if (prestamo.getFechaDevolucion() == null) {
                System.out.println(prestamo.resumen());
                hayPrestamos = true;
            }
        }

        if (!hayPrestamos) {
            System.out.println("No hay préstamos activos.");
        }
    }

    public static LocalDate leerFecha(String texto) {
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");

        try {
            return LocalDate.parse(texto, formato);
        } catch (DateTimeParseException e) {
            return null;
        }
    }

    public List<Libro> getLibros() {
        return this.libros;
    }

    public List<Usuario> getUsuarios() {
        return this.usuarios;
    }

}
