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


# CLASE 03
#Repaso de set o conjunto
#para definir un conjunto

conjunto2 = set()
conjunto1 = {'bye', }
conjunto2.add(7)
conjunto2.add('hola')
print(conjunto2)
conjunto1.add('Hola')
print(conjunto1)
print(3 not in conjunto1)#Preguntamos si el numero 3 NO esta en el conjunto1

#como hacer la igualdad de dos conjuntos
print(conjunto1 == conjunto2)#como respuesta nos devuelve un booleano

# Operaciones en conjuntos
conjunto3 = conjunto1 | conjunto2 #la linea es la que une los dos conjuntos
print(conjunto3)

conjunto3 = conjunto1 & conjunto2 #que elemento tienen en comun
print(conjunto3)

conjunto3 = conjunto1 ^ conjunto2 #elementos que no comparten o que son diferentes entre ambos
print(conjunto3)
conjunto3 = conjunto2 - conjunto1 #elemento que no esta en el conjunto
print(conjunto3)

conjunto3 = conjunto1 | conjunto2 #Aqui preguntamos si un conjunto es un subconjunto dentreo de otro
print(conjunto2.issubset(conjunto3))
print(conjunto1.issubset(conjunto3))
print(conjunto3.issubset(conjunto2))

print(conjunto3.issuperset(conjunto1))# preguntamos si los elementos del conjunto 1 estan dentro del conjunto 3
print(conjunto3.issuperset(conjunto2))#si es verdadero quiere decir que el conjunto3 es un superconjunto
print(conjunto2.issuperset(conjunto3))

#como saber si ambos conjuntos son disconexos, esto es si no comparten elementos en comun
print(conjunto1.isdisjoint(conjunto2))#No hay cosas en comun

#convertir un conjunto totalmente en inmutable
conjunto1 = frozenset #Esto hace que el conjunto sea totalmente inmutable
#No se puede agregar, modificar ni eliminar elementos del conjunto


#Repaso Diccionarios
diccionarioNuevo = {'azul': 'Blue', 'Rojo': 'Red', 'Verde': 'Green', 'Amarillo': 'Yellow' }
print(diccionarioNuevo)

#Como eliminar
del (diccionarioNuevo['azul'])
print(diccionarioNuevo)

#Los diccionarios pueden almacenar diferentes tiposd de datos
diccionario2 = {'Ariel': {'Edad': 40, 'Altura': 1.83}, 'Osvaldo': [45, 1.85], 'Natalia': [35, 1.67]}
print(diccionario2)

seleccionArgentina = {
    10: {'Nombre': 'Lionel Messi', 'Edad': 35, 'Altura': 1.70, 'Precio': '50 millones', 'Posicion': 'Extremo derecho'},
    11: {'Nombre': 'Angel Di Maria', 'Edad': 34, 'Altura': 1.80, 'Precio': '12 millones', 'Posicion': 'Extremo derecho'},
    24: {"Nombre": "Paulo Dybala", "Edad": 28, "Altura": 1.77, "Precio": "35 millones", "Posición": "Media Punta"},
    19: {"Nombre": "Nicolás Otamendi", "Edad": 34, 'Altura': 1.83, "Precio": "3.5 millones", "Posición": "Defensa Central"},
    1: {"Nombre": "Franco Armani", "Edad": 35, "Altura": 1.89, "Precio": "3.5 millones", "Posición": "Portero"},
    6: {"Nombre": "Giuliano Simeone","Edad": 27,"Altura": 1.67,"Precio": "15 millones","Posición": "Extremo Izquierdo"},
    2: {"Nombre": "Rodrigo de Paul","Edad": 32,"Altura": 1.80,"Precio": "30 millones","Posición": "Centrocampista"},
    3: {"Nombre": "Nahuel Molina","Edad": 28,"Altura": 1.75,"Precio": "25 millones","Posición": "Lateral Derecho"},
    4: {"Nombre": "Ángel Correa","Edad": 31,"Altura": 1.71,"Precio": "18 millones","Posición": "Extremo Izquierdo"}
}
for llave, valor in seleccionArgentina.items():
    print(llave, valor)

#como Tarea agregar por lo menos 4 jugadores mas al diccionario de las seleccionArgentina

print('Tenemos cargados en el diccionario la cantidad de: ',end=' ')
print(len(seleccionArgentina))

#pilas usando listas
pila = [1, 2, 3]

#Agregarr elementos a la pila por el final
pila.append(4)
pila.append(5)
print(pila)

#Sacamos elementos desde el final
elemantoBorrado = pila.pop()#quita el ultimo elemtno y lo guarda en la variable
print(f'Sacamos el elemento {elemantoBorrado}')
print(f'La pila ahora quedo así: {pila}')


#colas con listas
#estructura de datos de tipo fifo(first imput / first output)

cola = ['Ariel', 'Osvaldo','Liliana' ,'Pilar' ]

#Agregamos elementos al final de la cola
cola.append('Natalia')
cola.append('Jose')
print(cola)

#Sacamos elementos de la cola
seRetira = cola.pop(0)
print(f'Atendido: {seRetira}')
print(cola)

seRetira = cola.pop(0)
print(f'Atendido: {seRetira}')
print(cola)

seRetira = cola.pop(0)
print(f'Atendido: {seRetira}')
print(cola)

seRetira = cola.pop(0)
print(f'Atendido: {seRetira}')
print(cola)

seRetira = cola.pop(0)
print(f'Atendido: {seRetira}')
print(cola)






