#18. Crear dos listas del mismo tamaño, y luego armar una tercer lista, a la cual primero se le agregue el primer elemento de la lista 1, luego el primer elemento de la lista 2. Luego se le agregue el segundo elemento de la lista 1, luego el segundo elemento de la lista 2, y así sucesivamente. Ejemplo: Supongamos tenemos una lista de frutas y otra de verduras. La tercera quedaría: [’damasco’, ’frutilla’, ’ananá’] [’zanahoria’, ’berenjena’, ’tomate’] [’damasco’, ’zanahoria’, ’frutilla’, ’berenjena’, ’ananá’, ’tomate’] 

frutas = ['damasco', 'frutilla', 'ananá']
verduras = ['zanahoria', 'berenjena', 'tomate']

if len(frutas) != len(verduras):
    print("Las listas no tienen el mismo tamaño.")
else:
    combinada = []
    for i in range(len(frutas)):
        combinada.append(frutas[i])
        combinada.append(verduras[i])
    
    print(combinada)
