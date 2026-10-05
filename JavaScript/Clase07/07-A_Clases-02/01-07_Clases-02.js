
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

    nombreCompleto(){
        return this._nombre + " " + this._apellido;
    }
    // Sobreescribiendo el metodo de la clase padre (Object)
    toString(){  // Regresa un String
        return this.nombreCompleto();  // Llama al metodo ya sobreescrito de la clase Hija, a esto se lo denomina como Polimorfismo (Multiples formas en tiempo de ejecucion)
        // El metodo que se ejecuta depende si es una referencia de tipo padre o hija
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

    // Sobreescritura (Modificar el comportamiento de algun metodo hecho en la clase padre)
    nombreCompleto(){
        return super.nombreCompleto() + ", " + this._departamento;
    }
}

let persona1 = new Persona("Martin", "Perez");
console.log(persona1.nombre);  // Metodo "get"
persona1.nombre = "Juan Carlos";  // Metodo "set"
console.log(persona1.nombre);

let persona2 = new Persona("Carlos", "Lara");
console.log(persona2._nombre);
persona2.nombre = "Maria Laura";
console.log(persona2.nombre);

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
console.log(empleado1.nombreCompleto());

//Object.prototype.toString  Esta es la manera de acceder a atributos y metodos de manera dinamica
console.log(empleado1.toString());
console.log(persona1.toString());

