var nombre = 'Jose';
var apellido = 'Montes';

var nombreCompleto = nombre + ' ' + apellido; // Primera Concatenación
console.log(nombreCompleto); 

var nombreCompleto2 = 'Fede' + ' ' + 'Vantuch'; // Segunda Concatenación
console.log(nombreCompleto2); 

var juntos = nombre + 219; // Lee de izq a der siguiendo la cadena lee el numero como str
console.log(juntos); 

juntos = nombre + 78 + 17;
console.log(juntos); 

juntos = 78 + 17 + nombre;
console.log(juntos); 

nombre += apellido; //Tercera Concatenacion usando el operador simplificado
console.log(nombre); 
