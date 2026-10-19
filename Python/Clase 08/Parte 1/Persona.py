class Persona: # Esta clase hereda la clase object
    def __init__(self, nombre, edad):
        self.__nombre = nombre
        self.__edad = edad

class Empleado(Persona): # Esta clase es hija de la clase persona
    def __init__(self,nombre, edad, sueldo):
        super().__init__(nombre, edad)
        self.__sueldo = sueldo

empleado1 = Empleado('Ariel',40,75000)
print(empleado1.nombre)
print(empleado1.edad)
print(empleado1.sueldo)

# Tarea: Encapsular los atributos y agregar los métodos getters and setters
# Crear otro objeto, pasar los datos para nombre, edad y sueldo
# Mostrar estos datos, luego modificar y mostrar nuevamente.