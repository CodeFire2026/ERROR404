//Ampliando el uso de var let y const
/*
Con var puedes reasignar en cualquier momento
este forma parte del ambito global
un error es que se sobreescriba su 
*/

var nombre = "Federico";
nombre = "Jesus";
console.log(nombre);

function saludar(){
    var nombre3 = "Natalia";
    console.log(nombre3);
}
//console.log(nombre3); //el problema es que aqui no lee el dato en la funcion 

if (true){
    var edad = 21;
    console.log(edad);
}
console.log(edad); //En la funcion funciono correctamente, en la estructura if fallo 
/*
let: Esta puede ser reasignada en cualquier momento
la diferencia es que su ambito es de bloque,
solo disponible dentro de un bloque de llaves
*/

function saludar(){
    let nombre2 = "Federico";
    console.log(nombre2);
}
//console.log(nombre2);

if(true){
    let edad2 = 21;
    console.log(edad2);
}
//console.log(edad2);

/*
const se utiliza para valores constantes que no pueden ser reasignadas
*/

const fechaNacimiento = 2006;
console.log(fechaNacimiento);
//fechaNacimiento = 2003;
//console.log(fechaNacimiento); //Solo se ejecuta el console anterior

