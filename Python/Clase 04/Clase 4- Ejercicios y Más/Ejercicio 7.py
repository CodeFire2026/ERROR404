# Ejercicio 7: Modificar los elementos de una lista
# Llenar una lista con los números del 1 al 10, luego modificar los
# elementos de la lista multiplicandolos por un valor ingresado por el usuario

lista= [1,2,3,4,5,6,7,8,9,10]

print('La lista de números es:')
print(lista)

numeroingresado = int(input("Ingrese un numero: "))
numero=0
while numero <10:
    lista[numero]= lista[numero]*numeroingresado
    numero = numero+1
print(lista)


