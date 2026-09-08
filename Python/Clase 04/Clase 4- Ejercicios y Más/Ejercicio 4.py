import math # Importamos la clase math para hacer uso de la funcion sqrt(raíz cuadrada)
# Ejercicio de matematicas
# Para sacar la raiz cuadrada de un número positivo
numero = int(input("Digite un numero positivo: "))
while numero < 0:
    print('ERROR -> Debería ser un numero positivo.')
    numero = int(input("Digite un numero positivo: "))
print(f'\nSu raíz cuadrada es: {math.sqrt(numero):.2f}')