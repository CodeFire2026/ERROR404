#Ejercicio 8: Insertar elementos y ordenarlos
# Pedir números y meterlos en una lista, cuando el usuario
# introduzca un número 0, nuestro programa dejaría de insertar.
# Por último, mostrar los números ordenados de menor a mayor

lista = []
numero = 1
while numero != 0:
    numero = int(input("Ingrese un numero para añadir a la lista: "))
    if numero == 0:
        break
    else:
        lista.append(numero)
lista.sort()
print(lista)
