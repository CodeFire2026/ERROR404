
package biblioteca;

public class Libro {
    private String titulo;
    private int codigo;
    private int stock;
    private double precio;

    public Libro(String titulo, int codigo, int stock, double precio) {
        this.titulo = titulo;
        this.codigo = codigo;
        this.stock = stock;
        this.precio = precio;
    }

    public String getTitulo() {
        return this.titulo;
    }

    public int getCodigo() {
        return this.codigo;
    }

    public int getStock() {
        return this.stock;
    }

    public double getPrecio() {
        return this.precio;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public void aumentarStock() {
        stock++;
    }

    public boolean prestar() {
        if (stock > 0) {
            stock--;
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return "Código: " + codigo +
               " | Título: " + titulo +
               " | Precio: $" + String.format("%.2f", precio) +
               " | Stock: " + stock;
    }
}
