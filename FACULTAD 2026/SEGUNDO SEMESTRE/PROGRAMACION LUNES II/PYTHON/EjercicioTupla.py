# Dada la siguiente tupla
tupla = (13, 1, 8, 3, 2, 5, 8) # Definimos la tupla
# Crear una lista que solo incluya los nÃºmeros menores a 5
# e imprima por consola [1, 3, 2,]

lista_menores = []

for numero in tupla:
    if numero < 5:
        lista_menores.append(numero)

print(lista_menores)