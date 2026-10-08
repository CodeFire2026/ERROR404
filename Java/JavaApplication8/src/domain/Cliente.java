package domain;

import java.util.Date;


public class Cliente extends Persona {
    
    // Atributos privados (-)
    private int idCliente;
    private Date fechaRegistro;
    private boolean vip;

    // Constructores 
    public Cliente() {   
    }

    public Cliente(Date fechaRegistro, boolean vip) {
        super();
        this.fechaRegistro = fechaRegistro;
        this.vip = vip;
    }



    // Métodos públicos (+) : Getters y Setters

    public int getIdCliente() {
        return this.idCliente;
    }

    public Date getFechaRegistro() {
        return this.fechaRegistro;
    }
    public Cliente(Date fechaRegistro, boolean vip, String nombre, char genero, int edad, String direccion) {
    super(nombre, genero, edad, direccion); 
    this.fechaRegistro = fechaRegistro;
    this.vip = vip;
}
    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public boolean isVip() {
        return this.vip;
    }

    public void setVip(boolean vip) {
        this.vip = vip;
    }
}
