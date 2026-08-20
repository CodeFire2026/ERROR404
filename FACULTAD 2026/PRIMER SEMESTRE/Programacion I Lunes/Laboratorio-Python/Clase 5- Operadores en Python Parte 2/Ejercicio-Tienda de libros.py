print("Ingrese los siguientes datos del libro")

nombre = input("Digite el nombre del libro: ")
id_libro = int(input("Digite el ID del libro: "))
precio = float(input("Digite el precio del libro: "))
envio_gratuito = input("¿Indicar si el envío es gratuito (True/False)?: ")

envio_gratuito = envio_gratuito == "True"

print("\nNombre:", nombre)
print("ID:", id_libro)
print("Precio:", precio)
print("¿Envío Gratuito?:", envio_gratuito)