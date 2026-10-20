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

        return `
        ${this._idOrden} 
        ${this.calcularTotal()} 
        ${productosOrden}`;
    }
}