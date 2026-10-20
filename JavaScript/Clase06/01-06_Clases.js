//let persona3 = new Persona("Carla", "Ponce"); Esto no se debe hacer: Persona is not defined

class Persona{  // Clase Padre
    constructor(nombre, apellido){
        this._nombre = nombre;
        this._apellido = apellido;
    }
    get nombre(){
        return this._nombre;
    }
    get apellido(){  // Tarea
        return this._apellido;
    }
    
    set nombre(nombre){
        this._nombre = nombre;
    }
    set apellido(apellido){  // Tarea
        this._apellido = apellido;
    }
    
}

class Empleado extends Persona{  // Clase Hija
    constructor(nombre, apellido, departamento){
        super(nombre, apellido);  // Con la palabra reservada "super" lo que hacemos es llamar al constructor de la Clase Padre a nuestra Clase Hija
        this._departamento = departamento;
    }
    
    get departamento(){
        return this._departamento;
    }

    set departamento(departamento){
        this._departamento = departamento;
    }
}


let persona1 = new Persona("Martin", "Perez");
console.log(persona1.nombre);  // Metodo "get"
persona1.nombre = "Juan Carlos";  // Metodo "set"
console.log(persona1.nombre);
//console.log(persona1);
let persona2 = new Persona("Carlos", "Lara");
console.log(persona2._nombre);
persona2.nombre = "Maria Laura";
console.log(persona2.nombre);
//console.log(persona2);

// TAREA: agregar metodo get y set para el apellido
// Persona 1
console.log(persona1.apellido); // Metodo "get"
persona1.apellido = "Segura";
console.log(persona1.apellido)
// Persona 2
console.log(persona2.apellido);
persona2.apellido = "Villar";
console.log(persona2.apellido);


let empleado1 = new Empleado("Elena", "Vazques", "Sistemas");
console.log(empleado1);
console.log(empleado1.nombre)