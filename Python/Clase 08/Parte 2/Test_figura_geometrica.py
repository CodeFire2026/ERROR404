from Cuadrado import Cuadrado
from Rectangulo import Rectangulo

cuadrado1 = Cuadrado(5, 'Azul')
print(cuadrado1.ancho)
print(cuadrado1.alto)
print(f'Cálculo del área del cuadrado: {cuadrado1.calcular_area()}')

print('Creación objeto clase Rectangulo'.center(50, '-'))
rectangulo1 = Rectangulo(3, 8, 'Verde')
print(rectangulo1.ancho)
print(rectangulo1.alto)
print(f'Cálculo del área del rectángulo: {rectangulo1.calcular_area()}')

##MRO = Method Resolution Order
print(Cuadrado.mro())