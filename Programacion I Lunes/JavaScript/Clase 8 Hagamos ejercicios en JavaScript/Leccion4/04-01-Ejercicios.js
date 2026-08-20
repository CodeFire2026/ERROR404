// Ejercicio1: Calcular estacion del año 
// Ejercicio 2: Hora del dia (Segun la hora del dia es lo que hemos estado haciendo 
// por ejemplo si es la siesta, estoy entrenando, 
// si es la mañana estoy trabajando, 
// si es la tarde estoy entrando a la facultad, 
// si es la noche estoy cenando por irme a dormir)


// Ejercicio 1: Calcular estación del año

let mes = 4; // Podés cambiar este número (1 al 12) para probar otros meses
let estacion;

if (mes == 12 || mes == 1 || mes == 2) {
    estacion = "Verano";
} 
else if (mes == 3 || mes == 4 || mes == 5) {
    estacion = "Otoño";
} 
else if (mes == 6 || mes == 7 || mes == 8) {
    estacion = "Invierno";
} 
else if (mes == 9 || mes == 10 || mes == 11) {
    estacion = "Primavera";
} 
else {
    estacion = "Mes incorrecto (debe ser del 1 al 12)";
}

console.log("Estación del año: " + estacion);



// Ejercicio 2: Hora del día y actividades

let hora = 19; // Podés cambiar la hora (0 al 23) para ver los distintos estados
let actividad;

// Evaluamos los rangos de hora según tus actividades
if (hora >= 6 && hora < 13) {
    actividad = "Mañana: estoy trabajando.";
} 
else if (hora >= 13 && hora < 16) {
    actividad = "Siesta: estoy entrenando.";
} 
else if (hora >= 16 && hora < 21) {
    actividad = "Tarde: estoy entrando a la facultad.";
} 
else if ((hora >= 21 && hora <= 23) || (hora >= 0 && hora < 6)) {
    actividad = "Noche: estoy cenando por irme a dormir.";
} 
else {
    actividad = "Hora no válida (debe ser de 0 a 23)";
}

console.log("A las " + hora + "hs, mi actividad es: " + actividad);

// Estructura switch (la sintaxis es igual a Java)
switch (mes) { // No solo se pueden utilizar número, también cadenas
    case 1: case 2: case 12:
        estacion = "Verano";
        break;
    case 3: case 4: case 5:
        estacion = "Otoño";
        break;
    case 6: case 7: case 8:
        estacion = "Invierno";
        break;
    case 9: case 10: case 11:
        estacion = "Primavera";
        break;
    default:
        estacion = "Valor incorrecto";
}

console.log("Bienvenido a la estación de: " + estacion);