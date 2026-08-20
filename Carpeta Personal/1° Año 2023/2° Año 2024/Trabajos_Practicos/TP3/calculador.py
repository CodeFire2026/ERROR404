def suma(a, b):
    return a + b

def resta(a, b):
    return a - b

def multiplicacion(a, b):
    return a * b

def division(a, b):
    return a / b 

def calculador(): 

 while True: 

    print("\nSeleccione la operación:")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Salir")

    opcion = input ("ingrese su opcion (1, 2, 3, 4, 5): ")

    if opcion == '5': 
       print ("saliendo de la operacion...")

       break



