#Ingresar "N" enteros, visualizar la suma de los
#numeros pares de la lista, cuantos numeros pares
#existen y cual es el promedio de los numeros
#impares (Pseudocodigo)

n_Elementos = int(input("Digite la cantidad de elementos a ingresar: "))
i = 1
suma_pares = 0
conteo_pares = 0
suma_impares = 0
conteo_impares = 0

while i <= n_Elementos:
    num = int(input(f'{i}.Digite un numero: '))
    if num % 2 == 0:
        suma_pares = suma_pares + num
        conteo_pares = conteo_pares + 1
    else:
        suma_impares = suma_impares + num
        conteo_impares = conteo_impares + 1

    i = i + 1

if conteo_pares == 0:
    print("No se han digitado numeros pares")
else:
    print("La suma de los numeros pares es:", suma_pares)
    print("El conteo de los numeros pares es:", conteo_pares)


if conteo_impares == 0:
    print("No se han digitado numeros impares")
else:
    promedio_impares = suma_impares / conteo_impares
    print("El promedio de los numeros impares es:", promedio_impares)