# La palabra return en funciones

# Creamos una función para sumar
def sumar(a, b):
    return a + b

# Guardamos el resultado de la suma
resultado = sumar(78, 22)

# Mostramos el resultado
print(f"El resultado de la suma es: {resultado}")

# Mostramos el resultado de otra suma
print(f"El resultado de la suma es: {sumar(65, 45)}")

# Argumentos con valores por defecto
def sumar2(a=0, b=0):
    # Le damos un valor por defecto
    return a + b
# Llamamos a la función sin argumentos
resultado = sumar2()
print(f"Resultado de la suma: {resultado}")

# Llamamos a la función con argumentos
print(f"Resultado de la suma: {sumar2(22, 66)}")