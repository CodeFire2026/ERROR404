#3. Pida una frase al usuario, controle que tenga una longitud total mayor a 5 caracteres. Muestre en pantalla los primeros 3 caracteres de la misma. 

frase = input("Por favor, ingrese una frase (más de 5 caracteres): ")


if len(frase) > 5:
    # obtengo los primeros 3 caracteres de la frase
    primeros_tres = frase[:3]
    # Mostrar los primeros 3 caracteres en pantalla
    print(f"Los primeros 3 caracteres son: {primeros_tres}")
else:
    print("La frase ingresada es demasiado corta. Debe tener más de 5 caracteres.")
