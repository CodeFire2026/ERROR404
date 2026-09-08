#Ejercicio 3: Agregar personajes a una lista
#Escriba un programa donde cree una lista con los siguientes personajes del señor de los anillos
#Nombre: Aragon
#Clase: Guerrero
#Raza: Dúnadan del norte
#Nombre: Gandalf
#Clase: Istar
#Raza: Maia
#Nombre: Legolas
#Clase: Arquero
#Raza: Elfo Sindar


personajes = [
    {
        "nombre": "Aragorn",
        "clase": "Guerrero",
        "raza": "Dúnadan del norte"
    },
    {
        "nombre": "Gandalf",
        "clase": "Mago",
        "raza": "Istar"
    },
    {
        "nombre": "Legolas",
        "clase": "Arquero",
        "raza": "Elfo Sindar"
    }
]

for personaje in personajes:
    print("Nombre:", personaje["nombre"])
    print("Clase:", personaje["clase"])
    print("Raza:", personaje["raza"])
    print("--------------------")