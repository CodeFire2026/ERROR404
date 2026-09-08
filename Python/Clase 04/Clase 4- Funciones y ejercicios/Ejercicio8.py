# Ejercicio de colecciones 5 (Ejercicio 8): Menu interactivo - Cajero automatico
# Hacer un programa que simule un cajero automatico con un saldo inicial de 1000$ y tendra
# el sigiente menu de opciones:
#                               1. Ingresar dinero en la cuenta
#                               2. Retirar dinero de la cuenta
#                               3. Mostrar dinero disponible
#                               4. Salir

saldo = 1000

def ingresoDinero():
    global saldo
    plataDepo = int(input("Ingrese el dinero que desea depositar a la cuenta"))
    saldo = saldo + plataDepo
    print(f"El deposito de ${plataDepo} se realizo con exito")
    print(f"En la cuenta ahora hay un total de ${saldo}")
    print("") # Salto de linea

def retiroDinero():
    global saldo
    retiro = int(input("cuanto dinero desea retirar?"))
    if saldo > retiro:
        saldo = saldo - retiro
        print("retire su dinero...")
        print(f"en la cuenta han quedado ${saldo}")
        print("")  # Salto de linea
    elif saldo == retiro:
        saldo = saldo - retiro
        print(f"en la cuenta han quedado un total de ${saldo}")
        print("")  # Salto de linea
    else:
        print("el monto a retirar ingresado excede el monto de la cuenta, porfavor intente de nuevo con un monto menor")
        print("")  # Salto de linea

def consultar_saldo():
    print(f"Su saldo es de: ${saldo}")
    print("")  # Salto de linea

while True:
    print((f"{'#'*10}, BIENVENIDO DE VUELTA, {'#'*10}" ))
    print("Ingresar dinero (1)\n Retirar dinero (2)\n Consultar saldo (3)\n Salir (0)")
    opcion = int(input("Ingrese una opción: "))
    if opcion == 1:
        ingresoDinero()
    if opcion == 2:
        retiroDinero()
    if opcion == 3:
        consultar_saldo()
    if opcion == 0:
        print("  Hasta luego  ")
        break