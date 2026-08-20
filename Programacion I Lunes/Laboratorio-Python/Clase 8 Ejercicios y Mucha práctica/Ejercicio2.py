# Ejercicio 2: Calcular la suma de "N" primeros números.

# Pedimos la cantidad de números a sumarse (N)
N = int(input("Digite la cantidad de numeros a sumarse: "))

# Inicializamos el acumulador suma en 0
suma = 0

# El ciclo 'for' va desde 1 hasta N (en Python ponemos N + 1 porque el límite superior es exclusivo)
for i in range(1, N + 1):
    suma = suma + i

# Mostramos el resultado final por consola
print("La suma es:", suma)