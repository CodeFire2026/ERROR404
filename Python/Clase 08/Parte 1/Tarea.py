# Tarea: Encapsular los atributos y agregar los métodos getters and setters
# Crear otro objeto, pasar los datos para nombre, edad y sueldo
# Mostrar estos datos, luego modificar y mostrar nuevamente.

class Persona:
    def __init__(self, nombre, edad):
        self._nombre = nombre
        self._edad = edad

    @property
    def nombre(self):
        return self._nombre
    @nombre.setter
    def nombre(self, nombre):
        self._nombre = nombre

    @property
    def edad(self):
        return self._edad
    @edad.setter
    def edad(self, edad):
        self._edad = edad

class Empleado(Persona):
    def __init__(self, nombre, edad, sueldo):
        super().__init__(nombre, edad)
        self._sueldo = sueldo
    @property
    def sueldo(self):
        return self._sueldo
    @sueldo.setter
    def sueldo(self, sueldo):
        self._sueldo = sueldo
persona1 = Empleado("Sebastian Sanchez", 19, 22000)

print('')
print('Método Getter.')
print('')
print(persona1.nombre)
print(persona1.edad)
print(persona1.sueldo)
print('')
persona1.nombre = "Ariel Betancud"
persona1.edad = 25
persona1.sueldo = 30000
print('')
print('Aplicamos método Setter para modificar y mostramos nuevamente con Getter')
print('')
print(persona1.nombre)
print(persona1.edad)
print(persona1.sueldo)
