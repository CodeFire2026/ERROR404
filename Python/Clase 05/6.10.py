# Ejercicio 01: Función para sumar valores con *args

# Creamos una función para sumar valores numéricos
def sumar(*args):
    resultado = 0
    # Recorremos todos los valores recibidos
    for numero in args:

        resultado += numero
    return resultado

# Llamamos a la función con diferentes valores
resultado = sumar(1, 2, 3, 4, 5)

# Mostramos el resultado
print(f"El resultado de la suma es: {resultado}")