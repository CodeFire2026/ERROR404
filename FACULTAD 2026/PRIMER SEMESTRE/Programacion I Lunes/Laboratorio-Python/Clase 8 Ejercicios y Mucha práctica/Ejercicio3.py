# Ejercicio 3: Leer 10 números e imprimir cuántos son positivos,
# cuantos negativos y cuantos neutros.

# Inicializamos los contadores en 0
conteo_positivos = 0
conteo_negativos = 0
conteo_neutros = 0

# Ciclo para repetir la acción 10 veces (del 1 al 10)
for i in range(1, 11):
    num = int(input("Digite un numero: "))
    
    # Evaluamos si el número es neutro (igual a 0)
    if num == 0:
        conteo_neutros = conteo_neutros + 1
    else:
        # Si no es 0, evaluamos si es positivo o negativo
        if num > 0:
            conteo_positivos = conteo_positivos + 1
        else:
            conteo_negativos = conteo_negativos + 1

# Mostramos los resultados finales por consola
print("La cantidad de positivos es:", conteo_positivos)
print("La cantidad de negativos es:", conteo_negativos)
print("La cantidad de neutros es:", conteo_neutros)