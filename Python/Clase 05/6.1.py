# Ejercicio 10: No repetir caracteres

# Pedir una cadena por teclado
cadena = input("Ingrese una cadena: ")

# Crear una lista vacía
lista = []

# Recorrer los caracteres de la cadena
for caracter in cadena:

    # Comprobar si el caracter no está repetido
    if caracter not in lista:

        # Agregar el caracter a la lista
        lista.append(caracter)

# Mostrar la lista
print("Lista sin caracteres repetidos:", lista)