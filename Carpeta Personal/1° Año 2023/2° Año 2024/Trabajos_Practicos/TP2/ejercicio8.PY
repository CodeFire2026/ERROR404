#Dada la siguiente lista de valores numéricos [56, 7, 34, 19, 3, 1, 76, 2, 81, 4, 2, 8] muestre en pantalla solo los elementos de la misma que están ubicados en posiciones pares, como 0, 2, 4, etc (¿Como puede determinar si un nro. es par o no? ¿Deberá escribir cada print de a uno, o debería considerar realizar un recorrido por la lista, usando un bucle?) 


valores = [56, 7, 34, 19, 3, 1, 76, 2, 81, 4, 2, 8]

for i in range(len(valores)):
    if i % 2 == 0:
        print(valores[i])
