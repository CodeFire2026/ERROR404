//Tipos de Datos en JavaScript
/*
La sintaxis en lo que es comentarios 
es muy similar a la de Java 
realmente diriamos que es identico 
*/
//Tipo String
var nombre = "Fede"; 
console.log(typeof nombre); 
nombre = 7;
console.log(typeof nombre);
nombre = 12.3; 
console.log(typeof nombre);

//Tipo Numerico
var numero = 3000; 
console.log(numero);

var objeto = {
    nombre : "Federico",
    apellido : "Vantuch",
    telefono : "2604560975"
}

console.log(typeof objeto);

//Tipo de datos boolean
var bandera = true;
console.log(bandera);

//Tipo de dato funcion 
function miFuncion(){}
console.log(typeof miFuncion);

//Tipo de dato symbol
var simbolo = Symbol("Mi Simbolo");
console.log(typeof simbolo);

//Tipo de dato clase
class Persona{
    constructor(nombre,apellido){
        this.nombre = nombre;
        this.apellido = apellido;
    }
}

console.log(typeof Persona);

