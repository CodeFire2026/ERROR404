let x = 10;
console.log(x.length)

//objeto
let persona = {
    nombre: "carlos",
    apellido: "gil",
    email: "cgil@gmail.com",
    edad: 30,
    //video 3
    nombreCompleto: function(){
        return this.nombre+" "+this.apellido;
    }
}

console.log(persona.nombre);
console.log(persona.apellido);
console.log(persona.email);
console.log(persona.edad);
console.log(persona);
//video 3
console.log(persona.nombreCompleto);

//video 4
let persona2 = new Object(); //Debe crear un nuevo objeto en memoria
persona2.nombre = 'Juan';
persona2.direccion = 'Salada 14';
persona2.telefono = '5492618282821';
console.log(persona2.telefono); 5492618282821

//Video 5
console.log(persona['apellido']); //Accedemos como si fuera un arreglo Gil

//for in y accedemos al objeto como si fuera un arreglo 
for(propiedad in persona){
    console.log(propiedad); nombre, apellido, email, edad, nombreCompleto
    console.log(persona[propiedad]); 
}
console.log("cambiamos y eliminadmos un error");
//Video 6
persona.apellido = 'Betancud'; //Cambioamos dinamicamente un valor del obejeto
delete persona.apellido; //Eliminamos el error
console.log(persona.apellido); 
//Video 7
//video 8

//N1 forma sencilla
console.log(persona.nombre+" "+persona.apellido);

//N2 don ciclo for
for(nombrePropiedadd in persona){
    console.log(persona[nombrePropiedadd]);
}

//M3 con funcion
let personaArray = objet.values(persona);
console.log(personaArray);


