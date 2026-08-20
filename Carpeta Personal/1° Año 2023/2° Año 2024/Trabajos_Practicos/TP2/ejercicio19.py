#19. Pedir el nombre al usuario, y corroborar si ese nombre existe entre los nombres de usuarios validos guardados en una lista.

usuarios_validos = ["Federico", "Franco", "Fernando", "Fransisco", "Flavio"]

nombre_usuario = input("Ingrese su nombre: ")

if nombre_usuario in usuarios_validos:
    print("El nombre de usuario es válido.")
else:
    print("El nombre de usuario no es válido.")
