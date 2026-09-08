# Ejercicio de colecciones 2 (Ejercicio 5): Factorial de un numero positivo
# Hacer un programa para calcular el factorial de un numero positivo

numPos = int(input("Digite un numero positivo para calcular su factorial"))

i = 1
factorial = 1

while i <= numPos:
    factorial = factorial * i
    i += 1
    print(factorial)
if numPos < 0:
    print("ERROR --> el numero tiene que ser positivo")
