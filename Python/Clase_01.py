# Lista = Ariel , Liliana , Natalia , Osvaldo

nombres = ['Naty' , 'Osvaldo' , 'Lily' , 'Ariel']
print(nombres)
print(nombres[0:2])  # Solo muestra el indice 0, 1 pero no el indice 2
# ir del inicio de la lista al indice (sin incluirlo)
print(nombres[ :3]) # Indices a mostrar 0, 1, 2
# Desde el indice indicado hasta el final
print(nombres[1: ])
# Modificamos un valor
nombres[2] = 'Liliana'
nombres[0] = 'Natalia'
print(nombres)
# Iterar una lista
for nombre in nombres: # nombre es singular, la lista es plural
    print(nombre)
else:
    print('Se acabaron los elementos de la lista')

# Preguntamos cuantos elementos tiene
print(len(nombres)) # Le pasamos como parametro la lista
# Agregamos un elemento
nombres.append('Marcelo')
print(nombres)

# Insertar un elemento en un indice especifico
nombres.insert(1, 'Alberto')
print(nombres)
nombres.insert(3, 'Debora')
print(nombres)

# Eliminamos un elemento
nombres.remove('Alberto')
print(nombres)

# Eliminar el Ãºltimo elemento
nombres.pop()
print(nombres)

# Eliminar un indice especifico
del nombres[2] # del significa delete (eliminar)
print(nombres)

# Eliminar, borrar o limpiar todos los elementos
nombres.clear()
print(nombres)

# Eliminar la lista
del nombres
# (nombres) # aqui nos mostraria un error

# Diferencia entre Tupla y lista: tupla es inmutable (no se puede modificar)
# Definimos una tupla

cocina = ('cuchara', 'cuchillo', 'tenedor')
print(len(cocina))

# acceder a un elemento, para esto utilizamos corchetes no parentesis
print(cocina[0])
# mostramos de manera inversa
print(cocina[-1])

# Acceder a un rango
print(cocina[0:2])

# Ejemplo
verduras = ('papa',) # Necesita una coma para que sea una tupla
# de lo contrario seria una cadena

# Recorremos los elementos de la tupla
'''for cocina in cocina:# Print esta usando \n para saltos de lineas
    print(cocina, end=' ') # Usamos end= para eliminar los saltos de lineas
'''
# Conversion de Tupla a lista
cocinaLista = list(cocina)
cocinaLista[0] = 'Plato'
# Conversion de Lista a Tupla
cocina = tuple(cocinaLista)
print(cocina)

# del cocina # esto es para eliminar cocina