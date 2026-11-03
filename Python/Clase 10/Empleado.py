class Empleado: # No hereda si no solo de la clase object
    def __init__(self, nombre, sueldo):
        self.nombre = nombre
        self.sueldo = sueldo

    def __str__(self):
        return f"empleado: [Nombre: {self.nombre}, Sueldo: {self.sueldo}]"

    def mostrar_detalles(self):
        return self.__str__()

    def detalles(self):
        return f"Empleado: {self.nombre}, Sueldo: {self.sueldo}"