# CLASE 1
# lista (arreglos o vectores) = Ariel, Zamira, Natalia, Osvaldo
# Colecciones en Python

# Las listas es lo que se conoce en otros lenguajes como arreglos o vectores

nombres = ['Naty', 'Osvaldo', 'Zami', 'Ariel']
print(nombres)
print(nombres[0])
print(nombres[1])
print(nombres[3])
print(nombres[-1])
print(nombres[-2])

print(nombres[0:2]) #Solo muestra el indice 0, 1 pero no el indice 2
# Ir del inicio de la lista al indice (sin incluirlo)
print(nombres[ :3]) # Indice a mostrar 0, 1, 2
# Desde el indice indicado hasta el final
print(nombres[1: ])
# Modificamos un valor
nombres[2] = 'Zamira'
nombres[0] = 'Natalia'
print(nombres)
# Iterar una lista
for nombre in nombres: # nombre es singular, la lista es plural
    print(nombre)
else:
    print('Se acabaron los elementos de la lista')

# Preguntamos cuántos elementos tiene una lista
print(len(nombres)) # le pasamos como parámetro la lista

# Agregamos un elemento
nombres.append('Marcelo')
nombres.append([1, 2, 3])
nombres.append(True)
nombres.append(10.45)
nombres.append([4, 5])
nombres.append(7)
print(nombres)

# Insertar un elemento en un índice específico
nombres.insert(1, 'Alberto')
print(nombres)
nombres.insert(3, 'Debora')
print(nombres)

# Eliminamos un elemento
nombres.remove('Alberto')
print(nombres)

# Eliminar el último elemento
nombres.pop()
print(nombres)

# Eliminar un índice específico
del nombres[2] # del significa delete (eliminar)
print(nombres)

# Eliminar, borrar o limpiar todos los elementos
nombres.clear()
print(nombres)

# Eliminar la lista
del nombres
# print(nombres) # Aquí nos mostrará un error

# Verificamos como trabajar día a día en git

# Definimos una tupla
cocina = ('cuchara', 'cuchillo', 'tenedor')
print(len(cocina))

# Tupla sigue el orden de los elementos que se agregan no se pueden eliminar son inmutables
cocina = ('cuchara','cuchillo','tenedor')
print(cocina)

print(len(cocina))

# Acceder a un elemento, para esto utilizamos corchetes no parentesis
print(cocina[0])
# Mostrar de manera inversa
print(cocina[-1])

# Como acceder a un rango
print(cocina[0:2])

# La tupla necesita la coma si o si despues de un elemento

verdura = ('papa') #si no tiene coma es sting tipo cadena

# Recorremos los elementos de la tupla
for cocinar in cocina: #print esta usando \n para saltos de lineas
    print(cocinar, end=' ') # Usamos end = para eliminar los saltos de líneas

cocinaLista = list(cocina)
cocinaLista[0] = 'Plato'
cocina = tuple(cocinaLista)
print('\n', cocina)

# del cocina # esto es para eliminar una tupla

# CLASE 2
# Tipo set
planetas = {"Marte", "Júpiter", "Venus"}
print(len(planetas)) # Usamos la función len = length significa largo

# Revisar si un elemento existe dentro de set
print("Júpiter" in planetas)

# Agregar un elemento
planetas.add("Tierra") # add es una función
print(planetas)

# Eliminar elementos, puede arrojar un error si el elemento no exite
planetas.remove("Júpiter") # Esta función ante un mal ingreso u inexistencia del elemento da error
print(planetas)
planetas.discard("Tierra") # Esta función no nos presenta ningún tipo de error
print(planetas)

# Limpiar set o conjunto
planetas.clear()
print(planetas)

#Eliminar set
del planetas
# print(planetas) # al eliminar nos muestra un error

# "Maradona":10 Un diccionario está compuesto por dos elementos
# UNA LLAVE Y UN VALOR
# dict(key,value)
diccionario = {
    "IDE":"Integrated Development Environment",
    "POO":"Programación Orientada a Objetos",
    "SABD":"Sistema de Administración de Base de Datos",
}
# Verificar la cantidad de elementos del diccionario
print(len(diccionario))
print(diccionario)

# Acceder a un diccionario con la llave (key)
print(diccionario["IDE"])

# Otra forma de recuperar un elemento
print(diccionario.get("POO"))
print(diccionario.get("SABD"))

# Modificamos los elementos
diccionario["IDE"] = "Entorno de Desarrollo Integrado"
print(diccionario)

# Cómo recorrer los elementos
for termino in diccionario: # Recorremos mostrando solo las llaves
    print(termino)

# Necesitamos una función para recorer un diccionario
for termino, valor in diccionario.items():
    print(termino, valor)

# Otras maneras de acceder a un diccionario
for termino in diccionario.keys(): # Estamos usando una función
    print(termino) # Muestra solo las llaves

for valor in diccionario.values(): # Usamos una función para acceder al valor
    print(valor)

# Comprobar la existencia de algún elemento
print("IDE" in diccionario) # devuelve un booleano

# Agregar un elemento
diccionario["PK"] = "Primary key"
print(diccionario)

# Eliminar un elemento
diccionario.pop("SABD")
print(diccionario)

# Vaciar un diccionario
diccionario.clear()
print(diccionario)

# Eliminar diccionario
# del diccionario # El diccionario se borró
print(diccionario)

# Concatenamos listas
lista1 = [1, 2, 3, 1]
lista2 = [4, 5, 6, 1]
lista3 = lista1+lista2 # Concatenación
print(lista3)

lista3.extend([7, 8, 9, 1]) # Función para agregar varios elementos a una lista
print(lista3)

print(lista3.index(5)) # Función para ubicar en que indice está el valor ingresado
# print(lista3.index(0)) # Esto daría un error por no ser el elemento parte de la lista

# Cómo saber cuántos valores repitos hay en una lista
print(lista3.count(1)) # Cuenta cuántos valores iguales hay dentro de la lista

# Para poner al reves una lista
lista3.reverse()
print(lista3)

# Para que una lista se multiplique repitiendo sus elementos
lista3 = lista3 * 2
print(lista3)

# Métodos de ordenamiento, en python es una función
lista3.sort() # Ordena los elemntos ascendentemente
print(lista3)
lista3.sort(reverse=True) # Ordena descendentemente
print(lista3)

# Repaso de Tuplas
tupla = (4, "Hola", 6.78, [1, 2, 78], 4, "Hola") # Puede tener diferentes tipos de datos dentro
print(tupla)

print(4 in tupla) # Acción booleana, su respuesta es de tipo booleana
# Lo que podemos usar dentro de tupplas son: index, count, len
# En tuplas se puede convertir de tupla a lista y de lista a tupla






