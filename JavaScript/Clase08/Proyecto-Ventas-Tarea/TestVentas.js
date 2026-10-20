class Producto {
    static contadorProductos = 0;

    constructor(nombre, precio) {
        this._idProducto = ++Producto.contadorProductos;
        this._nombre = nombre;
        this._precio = precio;
    }

    get idProducto() {
        return this._idProducto;
    }

    get nombre() {
        return this._nombre;
    }

    set nombre(nombre) {
        this._nombre = nombre;
    }

    get precio() {
        return this._precio;
    }

    set precio(precio) {
        this._precio = precio;
    }

    toString() {
        return `idProducto: ${this._idProducto}, nombre: ${this._nombre}, precio: $${this._precio}`;
    }
}

class Orden {
    static contadorOrdenes = 0;
    static get MAX_PRODUCTOS() {
        return 5;
    }

    constructor() {
        this._idOrden = ++Orden.contadorOrdenes;
        this._productos = [];
    }

    get idOrden() {
        return this._idOrden;
    }

    agregarProducto(producto) {
        if (this._productos.length < Orden.MAX_PRODUCTOS) {
            this._productos.push(producto);
        } else {
            console.log('No se pueden agregar más productos, se ha superado el máximo.');
        }
    }

    calcularTotal() {
        let totalVenta = 0;
        for (let producto of this._productos) {
            totalVenta += producto.precio;
        }
        return totalVenta;
    }

    toString() {
        let productosOrden = '';
        for (let producto of this._productos) {
            productosOrden += '\n{' + producto.toString() + '}';
        }

        return `Orden: ${this._idOrden} \nTotal: $${this.calcularTotal()} \nProductos: ${productosOrden}`;
    }
}

// Pruebas de la clase Producto y Orden
let producto1 = new Producto('Pantalón', 200);
let producto2 = new Producto('Camisa', 150);
let producto3 = new Producto('Cinto', 50);

let orden1 = new Orden();
orden1.agregarProducto(producto1);
orden1.agregarProducto(producto2);

let orden2 = new Orden();
orden2.agregarProducto(producto3);
orden2.agregarProducto(producto1);
orden2.agregarProducto(producto2);

console.log(orden1.toString());
console.log(orden2.toString());