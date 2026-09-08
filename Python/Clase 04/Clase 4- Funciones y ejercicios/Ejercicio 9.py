# Ejercicio 9: Mostrar una frase sin espacios y contar su longitud
# Hacer un programa donde el usuario ingrese una frase, se le
# Devolverá la misma frase pero sin espacios en blanco, y
# además un contador de cuantos caracteres tiene la frase
# (sin contar los espacios en blanco)

# Ejemplo: frase = vivir por siempre en paz
#          frase final = vivirporsiempreenpaz
#          N° de caracteres = 20


frase = input("Ingrese una frase: ")

frase_sin_espacios = frase.replace(" ", "")

cantidad_caracteres = len(frase_sin_espacios)

print("Frase sin espacios:", frase_sin_espacios)
print("N° de caracteres:", cantidad_caracteres)