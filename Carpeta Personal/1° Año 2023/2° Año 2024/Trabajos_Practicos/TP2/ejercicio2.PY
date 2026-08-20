#2. Pida una frase al usuario. Muestre su primera letra en pantalla. Muéstrela en mayúsculas también. 

frase = input("Por favor, ingrese una frase: ")

primera_letra = frase[0]

print(f"La primera letra es: {primera_letra}")

print(f"La primera letra en mayúsculas es: {primera_letra.upper()}")

#La f antes de las comillas en Python se utiliza para crear una cadena de formato (f-string). 
#Las f-strings permiten incluir expresiones dentro de las cadenas, utilizando llaves {} para delimitar las expresiones que serán evaluadas y reemplazadas por sus valores correspondientes.
 