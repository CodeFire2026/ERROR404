# Ejercicio 4: Suponga que se tiene un conjunto de calificaciones de un
# grupo de 10 alumnos. Realizar un algoritmo para calcular la
# calificación promedio y la calificación más baja de todo el grupo.

# Inicializamos el acumulador de notas en 0
suma = 0.0

# Inicializamos la calificación más baja con un valor muy alto (99999) 
# para que cualquier nota ingresada al principio sea menor que esta.
calificacion_baja = 99999.0

# Ciclo para pedir las notas de los 10 alumnos
for i in range(1, 11):
    calificacion = float(input(f"{i}. Digite una calificacion: "))
    
    # Suma interactiva de las calificaciones
    suma = suma + calificacion
    
    # Calcular la menor calificación
    if calificacion < calificacion_baja:
        calificacion_baja = calificacion

# Calculamos el promedio dividiendo el total por los 10 alumnos
calificacion_promedio = suma / 10

# Mostramos los resultados finales por consola
print("La calificacion promedio es:", calificacion_promedio)
print("La calificacion nas baja es:", calificacion_baja)