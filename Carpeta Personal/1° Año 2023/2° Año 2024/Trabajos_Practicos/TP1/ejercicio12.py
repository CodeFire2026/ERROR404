#12. Realizar un programa que permita al usuario ingresar una palabra si la longitud de la palabra es mayor a 5 muestre en pantalla cuantos caracteres en total tiene la misma.

palabra = input("Ingrese una palabra" )
count = 0 

for char in range(len(palabra)):
    count = count +1

if count >5:
    print (count)
    