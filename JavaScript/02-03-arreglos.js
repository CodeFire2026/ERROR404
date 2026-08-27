//Creacion de Array o arreglos

//let autos= new array("Ferrari","Renault","BMW"); esta es la sintaxis vieja 

const autos = ["Ferrari", "Renault", "BMW"]; // esta es la sintaxis nueva 
console.log(autos);


//recorremos los elementos del arreglo 
console.log(autos[0]); // Ferrari
console.log(autos[2]); // BMW

for (let i = 0; i < autos.length; i++) {
    console.log(i + " : " + autos[i]);
}


//Modificamos los elementos del arreglo 
autos.push("Audi"); //agregamos un elemento al final del arreglo
console.log(autos);

//otras firnas de agregar elementos al arreglo
autos[autos.length] = "porche";       
console.log(autos);

//tercera froma de agregar elementos teniendo CUIDADO
autos[6] = 'Renault';
console.log(autos);

//como preguntar si es una array o arreglo 
console.log(Array.isArray(autos)); // devuelve un booleano

console.log(autos instanceof Array); //preguntamos si la variable es una instancia de la clase array