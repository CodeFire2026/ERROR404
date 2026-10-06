class Cubo:
    """
    Crear la clase Cubo con los atributos, ancho, alto y profundidad, con
    un metodo calcular_volumen que tendrá la formula:
    volumen = ancho * altura * profundidad
    que el usuario ingrese los valores.
    """
    def __init__(self, ancho, altura, profundidad):
        self.ancho = ancho
        self.altura = altura
        self.profundidad = profundidad
    def calcular_volumen(self):
        return self.ancho * self.altura * self.profundidad
ancho = float(input("Ingrese el ancho del Cubo: "))
altura = float(input("Ingrese la altura del Cubo: "))
profundidad = float(input("Ingrese la profundidad: "))

while ancho!=altura or ancho!=profundidad:
    print("Los datos ingresados deberían ser iguales.")
    ancho = float(input("Ingrese el ancho del Cubo: "))
    altura = float(input("Ingrese la altura del Cubo: "))
    profundidad = float(input("Ingrese la profundidad del Cubo: "))

cubo = Cubo(ancho, altura, profundidad)
print("El volumen del cubo es: ", cubo.calcular_volumen())