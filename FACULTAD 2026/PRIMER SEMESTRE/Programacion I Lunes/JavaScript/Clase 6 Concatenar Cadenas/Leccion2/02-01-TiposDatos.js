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

//Tipo de dato undefined 
var x;
console.log(x);

x = undefined;
console.log(typeof x);

//null: Significa ausencia de valor
var y = null; //null no es un tipo de datom pero su origen es de tipo object
console.log(typeof y);

//Tipos de datos array y Empty String
var autos = ["Citroen" , "Audi" , "BMW" , "Ford"];
console.log(autos);
console.log(typeof autos); //Preguntamos que tipos de datos es:

var z = "";
console.log(z); //Esto se refiere a que es una cadena vacia:
console.log(typeof z);