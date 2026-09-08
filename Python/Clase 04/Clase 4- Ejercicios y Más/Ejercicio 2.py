# Ejercicio 2: Operaciones de conjuntos con listas
# Escriba un programa que tenga 2 listas y que a continuación
# cree las siguientes listas (en las que no deben haber repetición)
# 1 Lista de palabras que aparecen en las listas
# 2 Lista de palabras que aparecen en la primera lista, pero no en la segunda
# 3 Lista de palabras que aparecen en la segunda lista, pero no en la primera
# 4 Lista de palabras que aparecen en ambas listas
listapalabras1 = ['Boca','River','Independiente','Racing','Velez','Estudiantes']
listapalabras2 = ['Estudiantes','Velez','Huracan','Rosario Central','Boca','River']

# Lista 1
lista1 = set()
lista1 = set(listapalabras1+listapalabras2)
print(lista1)
# Lista 2
lista2= []
for elemento in lista1:
    if elemento in listapalabras1 and elemento not in listapalabras2:
        lista2.append(elemento)
print(lista2)
#Lista 3
lista3 = []
for elemento in lista1:
    if elemento in listapalabras2 and elemento not in listapalabras1:
        lista3.append(elemento)
print(lista3)
#Lista 4
lista4 = []
for elemento in lista1:
    if elemento in listapalabras1 and elemento in listapalabras2:
        lista4.append(elemento)
print(lista4)



