# Tarea crear tres objetos más, utilizando los métodos getter and setter
# para modificarlos y mostrar los cambios con el método mostrar_detalles

class Persona:
    def __init__(self, nombre, apellido, ciudad, sexo, edad, nacionalidad):
        self.__nombre = nombre
        self.__apellido = apellido
        self.__ciudad = ciudad
        self.__sexo = sexo
        self.__edad = edad
        self.__nacionalidad = nacionalidad

    # Getters
    def get_nombre(self):
        return self.__nombre

    def get_apellido(self):
        return self.__apellido

    def get_ciudad(self):
        return self.__ciudad

    def get_sexo(self):
        return self.__sexo

    def get_edad(self):
        return self.__edad

    def get_nacionalidad(self):
        return self.__nacionalidad

    # Setters
    def set_nombre(self, nombre):
        self.__nombre = nombre

    def set_apellido(self, apellido):
        self.__apellido = apellido

    def set_ciudad(self, ciudad):
        self.__ciudad = ciudad

    def set_sexo(self, sexo):
        self.__sexo = sexo

    def set_edad(self, edad):
        self.__edad = edad

    def set_nacionalidad(self, nacionalidad):
        self.__nacionalidad = nacionalidad

    def mostrar_detalles(self):
        print(
            f"Nombre: {self.__nombre} | Apellido: {self.__apellido} | "
            f"Ciudad: {self.__ciudad} | Sexo: {self.__sexo} | "
            f"Edad: {self.__edad} | Nacionalidad: {self.__nacionalidad}"
        )


persona1 = Persona("Ana", "Gómez", "Neuquén", "Femenino", 25, "Argentina")
persona2 = Persona("Luis", "Pérez", "Cipolletti", "Masculino", 30, "Argentina")
persona3 = Persona("Marta", "López", "Plottier", "Femenino", 22, "Chilena")

print("--- Antes de modificar ---")
persona1.mostrar_detalles()
persona2.mostrar_detalles()
persona3.mostrar_detalles()

# Modificamos con los setters
persona1.set_edad(26)
persona1.set_ciudad("Centenario")
persona2.set_apellido("Rodríguez")
persona2.set_nacionalidad("Uruguaya")
persona3.set_nombre("Marta Sofía")
persona3.set_sexo("Otro")

# Usamos getters para comprobar los cambios
print("\nNueva edad de persona1:", persona1.get_edad())
print("Nueva nacionalidad de persona2:", persona2.get_nacionalidad())
print("Nuevo nombre de persona3:", persona3.get_nombre())

print("\n--- Después de modificar ---")
persona1.mostrar_detalles()
persona2.mostrar_detalles()
persona3.mostrar_detalles()