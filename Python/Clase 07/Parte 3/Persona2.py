class Persona2:
    def __init__(self, nombre: object, apellido: object, edad: object): # Está encapsulado
        self._nombre = nombre
        self._apellido = apellido
        self._edad = edad

    def mostrar_detalles(self):
        print(f"Los datos a mostrar son los siguientes: {self._nombre} {self._apellido} {self._edad}")


    @property # decorador
    def nombre(self ): # Método Getter
        print("Estamos utilizando el método get del nombre")
        return self._nombre


    @nombre.setter
    def nombre(self, nombre): # Método Setter
        print("Estamos utilizando el método set del nombre")
        self._nombre = nombre

    # Getter y Setter para apellido
    @property
    def apellido(self):  # Método Getter
        print("Estamos utilizando el método get de apellido")
        return self._apellido

    @apellido.setter
    def apellido(self, apellido):  # Método Setter
        print("Estamos utilizando el método set de apellido")
        self._apellido = apellido

    # Getter y Setter para edad
    @property
    def edad(self):  # Método Getter
        print("Estamos utilizando el método get de edad")
        return self._edad

    @edad.setter
    def edad(self, edad):  # Método Setter
        print("Estamos utilizando el método set de edad")
        self._edad = edad

if __name__ == '__main__':
    persona1 = Persona2("Ariel", "Betancud", 41)
    print(persona1.nombre) # Llamamos al Método Getter
    print(persona1._apellido)
    print(persona1._edad)

    persona1.nombre = "Ariel"
    persona1.apellido = "Betancud"
    persona1.edad = 41

    print(persona1.nombre)
    print(persona1.apellido)
    print(persona1.edad)
