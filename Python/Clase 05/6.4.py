# Comenzamos con Funciones
# Definimos una función
def mi_funcion():
    print("Saludos a todos")

# Llamamos a la función
mi_funcion()
# Se puede llamar a una función N cantidad de veces
mi_funcion()

# Desempaquetado de listas o list Unpacking
def show(name, lastName):
    print(name + " " + lastName)
person = ["Tiziana", "Calvo"]

# Pasamos uno por uno los datos de la lista a la función
show(person[0], person[1])
# Esto es lo mismo que lo anterior, pero pasamos todo junto
show(*person)

# Desempaquetamos a través de una tupla
person2 = ("Gustavo", "Rios")
show(*person2)

# Desempaquetado de diccionarios
person3 = {
    "lastName": "Esteban",
    "name": "Jaque"
}
show(**person3)

# Comenzamos con for, break y else
numbers = [1, 2, 3, 4, 5]
for n in numbers:
    print(n)
    if n == 3:
        break  # Esta es la única manera para que no se ejecute el else
else:
    print("Esto se terminó")
    