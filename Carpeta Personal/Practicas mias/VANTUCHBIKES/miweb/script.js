function reservarTurno() {

    let nombre = document.getElementById("nombre").value;
    let apellido = document.getElementById("apellido").value;
    let telefono = document.getElementById("telefono").value;
    let fecha = document.getElementById("fecha").value;
    let hora = document.getElementById("hora").value;
    let problema = document.getElementById("problema").value;

    let mensaje =
        "Hola, quiero reservar un turno:%0A%0A" +
        "Nombre: " + nombre + "%0A" +
        "Apellido: " + apellido + "%0A" +
        "Teléfono: " + telefono + "%0A" +
        "Fecha: " + fecha + "%0A" +
        "Hora: " + hora + "%0A" +
        "Problema: " + problema;

    let numero = "5492604560975"; // TU NUMERO

    window.open(
        "https://wa.me/" + numero + "?text=" + mensaje,
        "_blank"
    );
}
