# Diseñar un programa que ingresado un año, nos devuelva
# por consola si es un año bisiesto o no, repetir la acción
# hasta que el usuario lo decida.

opcion = 1

while opcion == 1:
    print("Comprobamos que anio es bisiesto")
    
    # Pedimos el año al usuario (num)
    num = int(input("Ingrese el anio: "))
    
    # Condición lógica para saber si es bisiesto
    if (num % 4 == 0 and num % 100 != 0) or (num % 400 == 0):
        print("El anio es Bisiesto")
    else:
        print("El anio no es Bisiesto")
        
    # Preguntamos si desea continuar
    opcion = int(input("Para seguir adelante digite la opcion 1: "))

print("Proceso finalizado.")