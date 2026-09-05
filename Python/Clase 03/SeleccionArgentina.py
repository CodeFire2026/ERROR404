
#Clase 03 - Diccionarios
#como Tarea agregar por lo menos 4 jugadores mas al diccionario de las seleccionArgentina
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

print('Tenemos cargados en el diccionario la cantidad de: ',end=' ')
print(len(seleccionArgentina))