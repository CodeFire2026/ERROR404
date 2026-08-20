#17. Escribir un programa que pida al usuario dos números y muestre por pantalla su división. Si el divisor es cero el programa debe mostrar un mensaje de error

dividendo = float(input("Ingrese el dividendo: "))
divisor = float(input("Ingrese el divisor: "))

if divisor != 0:
    resultado = dividendo / divisor
    print("El resultado de la división es:", resultado)
else:
    print("Error: No se puede dividir por cero.")
