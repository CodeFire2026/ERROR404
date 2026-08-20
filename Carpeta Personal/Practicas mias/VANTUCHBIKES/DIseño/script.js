function reservarTurno() {

    let nombre = document.getElementById("nombre").value;
    let apellido = document.getElementById("apellido").value;
    let telefono = document.getElementById("telefono").value;
    let fecha = document.getElementById("fecha").value;
    let hora = document.getElementById("hora").value;
    let problema = document.getElementById("problema").value;

    if (!fecha) {
        alert("Elegí una fecha");
        return;
    }

    // Obtener turnos guardados
    let turnos = JSON.parse(localStorage.getItem("turnos")) || {};

    // Si no existe ese día, inicia en 0
    if (!turnos[fecha]) {
        turnos[fecha] = 0;
    }

    // Limite por día
    if (turnos[fecha] >= 5) {
        alert("Este día ya no tiene turnos disponibles");
        return;
    }

    // Sumar turno
    turnos[fecha]++;
    localStorage.setItem("turnos", JSON.stringify(turnos));

    let mensaje =
        "Hola, quiero reservar un turno:%0A%0A" +
        "Nombre: " + nombre + "%0A" +
        "Apellido: " + apellido + "%0A" +
        "Teléfono: " + telefono + "%0A" +
        "Fecha: " + fecha + "%0A" +
        "Hora: " + hora + "%0A" +
        "Problema: " + problema;

    let numero = "5492604560975"; // tu número

    window.open(`https://wa.me/${2604560975}?text=${mensaje}`, "_blank");
}
