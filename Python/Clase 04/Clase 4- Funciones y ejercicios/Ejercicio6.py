# Ejercicio de colecciones 3 (Ejercicio 6): Tabla de multiplicar
# Hacer un programa que pida un numero por teclado y guarde en una lista su tabla de multiplicar
# hasta el 10. Por ejemplo: Si digita el 5 la lista tendra: 5, 10, 15, 20, 25, 30, 35, 40, 45, 50.

tablaMultiplicar = []

num = int(input("Ingrese un numero: "))

for i in range(11):
    multiplicar = num * i
    tablaMultiplicar.append(multiplicar)

print(f"La tabla de multplicar es: {tablaMultiplicar}")