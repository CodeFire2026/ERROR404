"""
Definir una clase padre llamada Vehiculo y dos clases hijas llamadas Auto y Bicicleta, las cuales
de la clase padre Vehiculo. La clase padre debe los sgtes atributos y metodos:

Vehiculo (clase padre)
- Atributos(color, ruedas)
- Metodos(__init__(color, ruedas) y __str__())

Auto(clase hija de Vehiculo)
- Atributo(velocidad (km/h), motor, marca)
- Metodos(__init__(color, ruedas, velocidad) y __str__())

Bicicleta(clase hija de Vehiculo)
- Atributos(tipo(urbana/ montaña/ etc.)
- Metodos(__init__(color, ruedas, tipo) y __str__())

Crear un objeto de cada clase
"""

class Vehiculo:
    def __init__(self, color, ruedas):
        self._color = color
        self._ruedas = ruedas

    def __str__(self):
        return f"Vehiculo= [ color: {self._color}, ruedas: {self._ruedas} ]"

    @property
    def color(self):
        return self._color

    @color.setter
    def color(self, color):
        self._color = color

    @property
    def ruedas(self):
        return self._ruedas

    @ruedas.setter
    def ruedas(self, ruedas):
        self._ruedas = ruedas



class Auto(Vehiculo):
    def __init__(self, color, ruedas, velocidad, motor, marca):
        super().__init__(color, ruedas)
        self._velocidad = velocidad
        self._motor = motor
        self._marca = marca

    @property
    def velocidad(self):
        return self._velocidad

    @velocidad.setter
    def velocidad(self, velocidad):
        self._velocidad = velocidad

    @property
    def motor(self):
        return self._motor

    @motor.setter
    def motor(self, motor):
        self._motor = motor

    @property
    def marca(self):
        return self._marca

    @marca.setter
    def marca(self, marca):
        self._marca = marca

    def __str__(self):
        return f"Auto [ Velocidad: {self._velocidad}, motor: {self._motor}, marca: {self._marca}, {super().__str__()} ]"



class Bicicleta(Vehiculo):
    def __init__(self, color, ruedas, tipo):
        super().__init__(color, ruedas)
        self._tipo = tipo

    @property
    def tipo(self):
        return self._tipo

    @tipo.setter
    def tipo(self, tipo):
        self._tipo = tipo

    def __str__(self):
        return f"Bicicleta [ Tipo: {self._tipo}, {super().__str__()} ]"



auto1 = Auto("Violeta", 4, "400km/h", "V8 4.8L", "Koenigsegg CCXR")
print("")
print(auto1)
print(auto1.color)
print(auto1.ruedas)
print(auto1.velocidad)
print(auto1.motor)
print(auto1.marca)

print("")

bicicleta1 = Bicicleta("Blanco", 2, "Urbana")
print(bicicleta1)
print(bicicleta1.color)
print(bicicleta1.ruedas)
print(bicicleta1.tipo)