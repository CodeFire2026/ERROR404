# Ejercicio de colecciones 4 (Ejercicio 7): Juego adivina el numero
# Realizar un juegp para adivinar un numero. Para ello se debe generar un numero aleatorio
# entre 0 y 100, y luego ir pidiendo numeros indicando "es mayor" o "es menor" segun sea mayor
# o menor con respecto a N. El proceso termina cuando el usuario acierta y alli se debe mostrar
# el numero de intentos.
import random

intentos = 1
numAlea = random.randint(1,100)

print("---- JUEGO: ADIVINA EL NUMERO ----")
numAdivinado = int(input("Introduce un numero: "))
while numAdivinado != numAlea:
    if numAdivinado < numAlea:
        print("El numero es mayor")
        intentos += 1
        numAdivinado = int(input("Introduce un numero: "))
    elif numAdivinado > numAlea:
        print("El numero es menor")
        intentos += 1
        numAdivinado = int(input("Introduce un numero: "))

print(f"Felicidades adivinaste el numero, con un total de {intentos} intentos")
