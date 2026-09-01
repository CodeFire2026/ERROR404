#Dada la siguente tupla
tupla = (12, 1, 8, 3, 2, 5, 8) #Definimo la tupla con los valores proporcionados
#Crear una lista que solo incluya los numeros menores a 5
# e imprima por consola {1, 3, 2}

lista = [] #Definimos fila lista vacia
#Filtramos los elementos menoree a 5 de la tupla 
for elemento in tupla:
    if elemento < 5:
        lista.append(elemento) 
print(lista) #Imprimimos la lista con los elementos menores a 5
