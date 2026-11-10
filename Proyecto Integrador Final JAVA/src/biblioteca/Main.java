package biblioteca;

import java.time.LocalDate;
import javax.swing.JOptionPane;

public class Main {
    private static final Biblioteca biblioteca = new Biblioteca();

    public static void main(String[] args) {
        int opcion;

        do {
            String input = JOptionPane.showInputDialog(null,
                "===============================\n" +
                " SISTEMA DE GESTIÓN BIBLIOTECA\n" +
                "       > Catálogo de libros\n" +
                "       > Gestión de préstamos\n" +
                "       > Control de stock\n" +
                "===============================\n" +
                "1. Registrarse\n" +
                "2. Ingresar\n" +
                "3. Salir del programa\n\n" +
                "Ingrese una opción:",
                "Menú Principal", JOptionPane.QUESTION_MESSAGE);

            if (input == null) {
                opcion = 3; 
            } else {
                try {
                    opcion = Integer.parseInt(input.trim());
                } catch (NumberFormatException e) {
                    opcion = -1;
                }
            }

            switch (opcion) {
                case 1:
                    registrarUsuario();
                    break;
                case 2:
                    ingresar();
                    break;
                case 3:
                    JOptionPane.showMessageDialog(null, "Saliendo del programa...");
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Opción no válida.");
                    break;
            }

        } while (opcion != 3);
    }

    private static void registrarUsuario() {
        String dniStr = JOptionPane.showInputDialog(null, "===== REGISTRO DE USUARIO =====\nIngrese su DNI (o cancele para volver):", "Registro", JOptionPane.QUESTION_MESSAGE);
        if (dniStr == null || dniStr.trim().isEmpty()) return;

        int dni;
        try {
            dni = Integer.parseInt(dniStr.trim());
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "DNI inválido.");
            return;
        }

        if (biblioteca.buscarUsuarioPorDni(dni) != null) {
            JOptionPane.showMessageDialog(null, "El usuario ya está registrado.");
            return;
        }

        String nombre = JOptionPane.showInputDialog(null, "Ingrese su nombre:");
        if (nombre == null || nombre.trim().isEmpty()) return;

        String edadStr = JOptionPane.showInputDialog(null, "Ingrese su edad:");
        if (edadStr == null || edadStr.trim().isEmpty()) return;

        int edad;
        try {
            edad = Integer.parseInt(edadStr.trim());
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Edad inválida.");
            return;
        }

        if (edad < 18) {
            JOptionPane.showMessageDialog(null, "El usuario NO es mayor de edad.");
            return;
        }

        if (biblioteca.registrarUsuario(nombre, dni, edad)) {
            JOptionPane.showMessageDialog(null, "Usuario registrado con éxito.\nDNI: " + dni + "\nNombre: " + nombre + "\nEdad: " + edad);
            Usuario usuario = biblioteca.buscarUsuarioPorDni(dni);
            menuLibros(usuario);
        }
    }

    private static void ingresar() {
        String dniStr = JOptionPane.showInputDialog(null, "===== INGRESO =====\nIngrese su DNI (o cancele para volver):", "Ingreso", JOptionPane.QUESTION_MESSAGE);
        if (dniStr == null || dniStr.trim().isEmpty()) return;

        int dni;
        try {
            dni = Integer.parseInt(dniStr.trim());
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "DNI inválido.");
            return;
        }

        Usuario usuario = biblioteca.buscarUsuarioPorDni(dni);

        if (usuario != null) {
            JOptionPane.showMessageDialog(null, "Bienvenido/a de nuevo, " + usuario.getNombre() + "!");
            menuLibros(usuario);
        } else {
            JOptionPane.showMessageDialog(null, "El usuario no está registrado.\nPuede registrarse desde la opción 1.");
        }
    }

    private static void menuLibros(Usuario usuario) {
        int opcion;

        do {
            String input = JOptionPane.showInputDialog(null,
                "==============================\n" +
                "            LIBROS            \n" +
                "==============================\n" +
                "1. Registro de libros\n" +
                "2. Buscar libros\n" +
                "3. Realizar préstamo\n" +
                "4. Devolver libro\n" +
                "5. Ver matriz de préstamos\n" +
                "6. Ver libros disponibles\n" +
                "7. Ver préstamos activos\n" +
                "8. Regresar al menú principal\n\n" +
                "Ingrese una opción:",
                "Menú Libros", JOptionPane.QUESTION_MESSAGE);

            if (input == null) {
                opcion = 8;
            } else {
                try {
                    opcion = Integer.parseInt(input.trim());
                } catch (NumberFormatException e) {
                    opcion = -1;
                }
            }

            switch (opcion) {
                case 1:
                    registrarLibro();
                    break;
                case 2:
                    menuBuscar();
                    break;
                case 3:
                    realizarPrestamo(usuario);
                    break;
                case 4:
                    devolverLibro(usuario);
                    break;
                case 5:
                    JOptionPane.showMessageDialog(null, "La matriz de préstamos se mostrará en la consola del IDE.");
                    biblioteca.mostrarMatrizPrestamos();
                    break;
                case 6:
                    biblioteca.mostrarLibros();
                    break;
                case 7:
                    biblioteca.mostrarPrestamosActivos();
                    break;
                case 8:
                    JOptionPane.showMessageDialog(null, "Regresando al menú principal...");
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Opción no válida.");
                    break;
            }

        } while (opcion != 8);
    }

    private static void registrarLibro() {
        String titulo = JOptionPane.showInputDialog(null, "===== REGISTRO DE LIBRO =====\nIngrese el título del libro (o cancelar para volver):");
        if (titulo == null || titulo.trim().isEmpty()) return;

        String codStr = JOptionPane.showInputDialog(null, "Ingrese el código del libro:");
        if (codStr == null || codStr.trim().isEmpty()) return;
        int codigo = Integer.parseInt(codStr.trim());

        if (biblioteca.buscarLibroPorCodigo(codigo) != null) {
            JOptionPane.showMessageDialog(null, "ERROR: ya existe un libro con ese código.");
            return;
        }

        String precioStr = JOptionPane.showInputDialog(null, "Ingrese el precio del libro:");
        if (precioStr == null || precioStr.trim().isEmpty()) return;
        double precio = Double.parseDouble(precioStr.trim());

        String stockStr = JOptionPane.showInputDialog(null, "Ingrese el stock del libro:");
        if (stockStr == null || stockStr.trim().isEmpty()) return;
        int stock = Integer.parseInt(stockStr.trim());

        if (precio < 0 || stock < 0) {
            JOptionPane.showMessageDialog(null, "El precio y el stock no pueden ser negativos.");
            return;
        }

        biblioteca.registrarLibro(titulo, codigo, precio, stock);
        JOptionPane.showMessageDialog(null, "Libro registrado correctamente.");
    }

    private static void menuBuscar() {
        int opcion;

        do {
            String input = JOptionPane.showInputDialog(null,
                "===== BUSCAR LIBROS =====\n" +
                "1. Buscar por código\n" +
                "2. Buscar por nombre\n" +
                "3. Regresar\n\n" +
                "Ingrese una opción:",
                "Buscar Libros", JOptionPane.QUESTION_MESSAGE);

            if (input == null) {
                opcion = 3;
            } else {
                try {
                    opcion = Integer.parseInt(input.trim());
                } catch (NumberFormatException e) {
                    opcion = -1;
                }
            }

            switch (opcion) {
                case 1:
                    String codStr = JOptionPane.showInputDialog(null, "Ingrese el código:");
                    if (codStr != null && !codStr.trim().isEmpty()) {
                        int codigo = Integer.parseInt(codStr.trim());
                        biblioteca.buscarPorCodigo(codigo);
                    }
                    break;
                case 2:
                    String nombre = JOptionPane.showInputDialog(null, "Ingrese el nombre:");
                    if (nombre != null && !nombre.trim().isEmpty()) {
                        biblioteca.buscarPorNombre(nombre);
                    }
                    break;
                case 3:
                    JOptionPane.showMessageDialog(null, "Regresando...");
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Opción no válida.");
                    break;
            }
        } while (opcion != 3);
    }

    private static void realizarPrestamo(Usuario usuario) {
        String nombre = JOptionPane.showInputDialog(null, "===== REGISTRO DE PRÉSTAMO =====\nIngrese el nombre del libro que desea llevar (o cancelar para volver):");
        if (nombre == null || nombre.trim().isEmpty()) return;

        Libro libro = biblioteca.buscarLibroPorNombre(nombre);

        if (libro == null) {
            JOptionPane.showMessageDialog(null, "ERROR: el libro no existe.");
            return;
        }

        if (usuario.tienePrestado(libro)) {
            JOptionPane.showMessageDialog(null, "ERROR: usted ya tiene ese libro.");
            return;
        }

        if (biblioteca.realizarPrestamo(usuario, libro)) {
            JOptionPane.showMessageDialog(null, "PRÉSTAMO EXITOSO.\nStock actualizado de " + libro.getTitulo() + ": " + libro.getStock());
        } else {
            JOptionPane.showMessageDialog(null, "ERROR: no hay stock disponible.");
        }
    }

    private static void devolverLibro(Usuario usuario) {
        if (usuario.getLibrosPrestados().isEmpty()) {
            JOptionPane.showMessageDialog(null, "No tiene libros prestados.");
            return;
        }

        StringBuilder listaLibros = new StringBuilder("Sus libros prestados:\n");
        for (Libro libro : usuario.getLibrosPrestados()) {
            listaLibros.append("- ").append(libro.getTitulo()).append("\n");
        }
        listaLibros.append("\nIngrese el nombre del libro que desea devolver:");

        String nombre = JOptionPane.showInputDialog(null, listaLibros.toString());
        if (nombre == null || nombre.trim().isEmpty()) return;

        Libro libro = biblioteca.buscarLibroPorNombre(nombre);

        if (libro == null || !usuario.tienePrestado(libro)) {
            JOptionPane.showMessageDialog(null, "ERROR: usted no tiene ese libro prestado.");
            return;
        }

        LocalDate fechaDevolucion = null;
        while (fechaDevolucion == null) {
            String fechaTexto = JOptionPane.showInputDialog(null, "Ingrese la fecha de devolución (DD/MM/AAAA):");
            if (fechaTexto == null) return;

            fechaDevolucion = Biblioteca.leerFecha(fechaTexto);
            if (fechaDevolucion == null) {
                JOptionPane.showMessageDialog(null, "ERROR: formato de fecha inválido.");
            }
        }

        if (fechaDevolucion.isBefore(LocalDate.now())) {
            JOptionPane.showMessageDialog(null, "La fecha de devolución no puede ser anterior a hoy.");
            return;
        }

        String diasStr = JOptionPane.showInputDialog(null, "¿Cuántos días tuvo el libro prestado?:");
        if (diasStr == null) return;
        int diasPrestamoNum = Integer.parseInt(diasStr.trim());

        LocalDate fechaPrestamo = LocalDate.now().minusDays(diasPrestamoNum);

        if (fechaDevolucion.isBefore(fechaPrestamo)) {
            JOptionPane.showMessageDialog(null, "ERROR: las fechas no son coherentes.");
            return;
        }

        double multa;
        long dias = java.time.temporal.ChronoUnit.DAYS.between(fechaPrestamo, fechaDevolucion);

        if (dias <= 7) {
            multa = biblioteca.devolverLibro(usuario, libro, fechaDevolucion);
            JOptionPane.showMessageDialog(null, "No hay recargo en la devolución.");
        } else {
            multa = biblioteca.devolverLibro(usuario, libro, fechaDevolucion);
            JOptionPane.showMessageDialog(null, "Días de retraso: " + (dias - 7) + "\nDebe abonar un total de $" + String.format("%.2f", multa));
        }

        if (multa >= 0) {
            JOptionPane.showMessageDialog(null, "Devolución registrada correctamente.\nStock actualizado de " + libro.getTitulo() + ": " + libro.getStock());
        }
    }
}