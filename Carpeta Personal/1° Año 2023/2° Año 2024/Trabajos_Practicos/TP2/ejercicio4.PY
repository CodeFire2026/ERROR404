#4. Pida un numero al usuario, mayor que 1 y menor a 50. Muestre en pantalla los números de 1 hasta ese número ingresado, uno por línea. 

numero = int(input("Por favor, ingrese un número mayor que 1 y menor a 50: "))


if 1 < numero < 50:

    for i in range(1, numero + 1):
        print(i)
else:
    print("El número ingresado no está en el rango solicitado. Debe ser mayor que 1 y menor a 50.")
