class Persona:  # Esta clase hereda de la clase Object
    def __init__(self, nombre, edad):
        self._nombre = nombre
        self._edad = edad

    #TAREA
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

    def __str__(self): # Override = Sobreescribir
        return f"Persona: [ Nombre: {self.nombre}, Edad: {self.edad} ]"


class Empleado(Persona):  # Esta es la clase hija de la clase Persona
    def __init__(self, nombre, edad, sueldo):
        super().__init__(nombre, edad)
        self._sueldo = sueldo

    #TAREA
    @property
    def sueldo(self):
        return self._sueldo

    @sueldo.setter
    def sueldo(self, sueldo):
        self._sueldo = sueldo

    def __str__(self):
        return f"Empleado: [ Sueldo: {self._sueldo} ] {super().__str__()}"

empleado1 = Empleado('Sergio', 30, 75000)
print(empleado1.nombre)
print(empleado1.edad)
print(empleado1.sueldo)

# Tarea: Encapsular los atributos y agregar los métodos getters and setters
# Crear otro objeto, pasar los datos para nombre, edad y sueldo
# Mostrar estos datos, luego modificar y mostrar nuevamente.
print("")
print("----TAREA----")
empleado2 = Empleado("Sebastian Sanchez", 19, 22000)

print('Método Getter.')
print('')
print(empleado2.nombre)
print(empleado2.edad)
print(empleado2.sueldo)
print('')
empleado2.nombre = "Ariel Betancud"
empleado2.edad = 25
empleado2.sueldo = 30000
print('')
print('Aplicamos método Setter para modificar y mostramos nuevamente con Getter')
print('')
print(empleado2.nombre)
print(empleado2.edad)
print(empleado2.sueldo)