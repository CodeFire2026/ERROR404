#17. Pida 10 nombres de películas al usuario. Guárdelos en una lista. Luego pida al usuario que ingrese un numero n del 1 al 10. Controle que n este en el rango correcto, es decir entre 1 y 10. Muestre en pantalla cual es la película n-esima. Por ejemplo, si el usuario me ingresa 1, debo mostrar la primer película de la lista. 

peliculas = []
for i in range(1, 11):
    pelicula = input(f"Ingrese el nombre de la película {i}: ")
    peliculas.append(pelicula)

while True:
    try:
        n = int(input("Ingrese un número del 1 al 10: "))
        if 1 <= n <= 10:
            break
        else:
            print("El número debe estar en el rango del 1 al 10. Inténtelo nuevamente.")
    except ValueError:
        print("Debe ingresar un número entero.")

pelicula_n_esima = peliculas[n - 1]
print(f"La película número {n} es: {pelicula_n_esima}")
