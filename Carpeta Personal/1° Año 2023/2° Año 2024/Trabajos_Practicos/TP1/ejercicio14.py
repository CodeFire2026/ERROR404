#14. Realizar un programa que permita ingresar dos palabras, y determine si tienen la misma longitud o no. Mostrar un mensaje en pantalla en cada caso. Misma longitud, una menor, o una mayor.

palabra1 = input("Ingrese la primera palabra: ")
palabra2 = input("Ingrese la segunda palabra: ")

if len(palabra1) == len(palabra2):
    print("Las palabras tienen la misma longitud.")
elif len(palabra1) < len(palabra2):
    print("La primera palabra es más corta que la segunda.")
else:
    print("La primera palabra es más larga que la segunda.")
