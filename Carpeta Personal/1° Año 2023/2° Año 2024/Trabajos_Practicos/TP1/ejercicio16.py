#16. Realizar un programa que permita al usuario ingresar 3 números, ordenarlos y mostrarlos luego en pantalla de menor a mayor.

# Solicitar al usuario que ingrese tres números
num1 = float(input("Ingrese el primer número: "))
num2 = float(input("Ingrese el segundo número: "))
num3 = float(input("Ingrese el tercer número: "))

# Determinar el menor número
menor = num1
if num2 < menor:
    menor = num2
if num3 < menor:
    menor = num3

# Determinar el mayor número
mayor = num1
if num2 > mayor:
    mayor = num2
if num3 > mayor:
    mayor = num3

# Calcular el número del medio
medio = (num1 + num2 + num3) - menor - mayor

# Mostrar los números ordenados de menor a mayor
print("Los números ordenados de menor a mayor son:", menor, ",", medio, ",", mayor)


