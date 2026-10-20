class Rectangulo:
    """
        Crear una clase llamada Rectángulo, debe tenér 2 atributos: altura y base
        el nombre del metodo será calcular área utilizando la formula:
        area = base * altura. Pero la base y la altura deben ser ingresadas por
        el usuario y los objetos deben ser tres.
        """

    def __init__(self, base, altura):
        self.base = base
        self.altura = altura

    def calcularArea(self):
        return self.base * self.altura


# Rectángulo 1
base = float(input("Ingrese la base del rectangulo 1: "))
altura = float(input("Ingrese la altura del rectangulo 1: "))

while base == altura:
    print("La base y la altura no pueden ser iguales.")
    altura = float(input("Ingrese nuevamente la altura: "))
    base = float(input("Ingrese nuevamente la base: "))

rectangulo1 = Rectangulo(base, altura)

print("El area del rectangulo 1 es:", rectangulo1.calcularArea())


# Rectángulo 2
base = float(input("Ingrese la base del rectangulo 2: "))
altura = float(input("Ingrese la altura del rectangulo 2: "))

while base == altura:
    print("La base y la altura no pueden ser iguales.")
    altura = float(input("Ingrese nuevamente la altura: "))
    base = float(input("Ingrese nuevamente la base: "))

rectangulo2 = Rectangulo(base, altura)

print("El area del rectangulo 2 es:", rectangulo2.calcularArea())


# Rectángulo 3
base = float(input("Ingrese la base del rectangulo 3: "))
altura = float(input("Ingrese la altura del rectangulo 3: "))

while base == altura:
    print("La base y la altura no pueden ser iguales.")
    altura = float(input("Ingrese nuevamente la altura: "))
    base = float(input("Ingrese nuevamente la base: "))

rectangulo3 = Rectangulo(base, altura)

print("El area del rectangulo 3 es:", rectangulo3.calcularArea())

