
package biblioteca;

import biblioteca.Usuario;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Prestamo {
    private final Usuario usuario;
    private final Libro libro;
    private final LocalDate fechaPrestamo;
    private LocalDate fechaDevolucion;
    private double multa;

    public Prestamo(Usuario usuario, Libro libro, LocalDate fechaPrestamo) {
        this.usuario = usuario;
        this.libro = libro;
        this.fechaPrestamo = fechaPrestamo;
        this.multa = 0;
    }

    public Usuario getUsuario() {
        return this.usuario;
    }

    public Libro getLibro() {
        return this.libro;
    }

    public LocalDate getFechaPrestamo() {
        return this.fechaPrestamo;
    }

    public LocalDate getFechaDevolucion() {
        return this.fechaDevolucion;
    }

    public double getMulta() {
        return this.multa;
    }

    public void registrarDevolucion(LocalDate fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;

        long dias = java.time.temporal.ChronoUnit.DAYS.between(
                fechaPrestamo, fechaDevolucion);

        if (dias > 7) {
            multa = (dias - 7) * 500.0;
        }
    }

    public long diasPrestado() {
        LocalDate fechaFinal = fechaDevolucion != null
                ? fechaDevolucion
                : LocalDate.now();

        return java.time.temporal.ChronoUnit.DAYS.between(
                fechaPrestamo, fechaFinal);
    }

    public String resumen() {
        DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");

        return "Libro: " + libro.getTitulo()
                + " | Usuario: " + usuario.getNombre()
                + " | Préstamo: " + fechaPrestamo.format(formato)
                + " | Días: " + diasPrestado()
                + " | Multa: $" + String.format("%.2f", multa);
    }
}
