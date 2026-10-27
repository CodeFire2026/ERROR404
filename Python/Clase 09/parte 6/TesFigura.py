from Cuadrado import Cuadrado
from Rectangulo import Rectangulo

print('Creación de objeto clase Cuadrado'.center(50, '_'))
cuadrado1 = Cuadrado(8, 'Rojo')
cuadrado1.alto = 20
cuadrado1.ancho = 20
# print(cuadrado1.ancho)
# print(cuadrado1.alto)
print(f'Cálculo del área del cuadrado: {cuadrado1.calcular_area()}')

# MRO = Method Resolution Order
print(Cuadrado.mro())

print(cuadrado1)
print('Creación de objeto clase Rectangulo'.center(50, '_'))
rectangulo1 = Rectangulo(3, 9, 'verde')
rectangulo1.alto = 15
print(f'Cálculo del área del rectángulo: {rectangulo1.calcular_area()}')
print(rectangulo1)

#figura1 = FiguraGeometrica () Nose puede instanciar, es abstracta
print(Cuadrado.mro())
