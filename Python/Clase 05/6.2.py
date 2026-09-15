# Ejercicio 11: Agenda telefónica

# Crear un diccionario vacío
agenda = {}

# Bucle principal del programa
while True:

    # Mostrar el menú
    print("\n--- AGENDA TELEFÓNICA ---")
    print("1. Nuevo contacto")
    print("2. Borrar contacto")
    print("3. Ver contactos existentes")
    print("4. Salir")

    # Pedir una opción
    opcion = input("Ingrese una opción: ")

    # Opción 1: Nuevo contacto
    if opcion == "1":

        nombre = input("Ingrese el nombre del contacto: ")
        telefono = input("Ingrese el teléfono: ")

        # Agregar contacto al diccionario
        agenda[nombre] = telefono

        print("Contacto agregado correctamente.")

    # Opción 2: Borrar contacto
    elif opcion == "2":

        nombre = input("Ingrese el nombre del contacto a borrar: ")

        # Comprobar si existe el contacto
        if nombre in agenda:

            del agenda[nombre]

            print("Contacto borrado correctamente.")

        else:

            print("El contacto no existe.")

    # Opción 3: Ver contactos
    elif opcion == "3":

        if len(agenda) == 0:

            print("La agenda está vacía.")

        else:

            print("\n--- CONTACTOS EXISTENTES ---")

            for nombre, telefono in agenda.items():

                print("Nombre:", nombre)
                print("Teléfono:", telefono)
                print("--------------------")

    # Opción 4: Salir
    elif opcion == "4":

        print("Saliendo de la agenda...")
        break

    # Opción incorrecta
    else:

        print("Opción inválida. Intente nuevamente.")