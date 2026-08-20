//Actividad: Meses del año con switch, deben simplificar y agregar
//eficacia con el concepto
//Dry dont't repeat yourself: Evitar repetir tu código
//Crear una función como la de getDay para los meses del año

function getMonth(month) {
    
    switch (month) {
        case 1:
            console.log("Estamos en Enero");
            break;
        case 2: 
            console.log("Estamos en Febrero");
            break;
        case 3:
            console.log("Estamos en Marzo");
            break;
        case 4:
            console.log("Estamos en Abril");
            break;
        case 5:
            console.log("Estamos en Mayo");
            break;
        case 6:
            console.log("Estamos en Junio");
            break;
        case 7:
           console.log("Estamos en Julio");
           break;
        case 8:
           console.log("Estamos en Agosto");
           break;
        case 9:
            console.log("Estamos en Septiembre");
            break;
        case 10:
            console.log("Estamos en Octubre");
            break;
        case 11:
            console.log("Estamos en Noviembre");
            break;
        case 12:
            console.log("Estamos en Diciembre");
            break;
        default:
            console.log("Error en el ingreso del mes del año");
            break;
    }
}
console.log("Estamos en el mes: ");
//Esta es la opción mejorada
let months2 = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre","Octubre","Noviembre","Diciembre"]
function getMonth2(n){
    if(n < 1 || n > 12){
        throw new Error('Fuera de rango');
    }
    return months2[n-1]
}
console.log(getMonth2(6));