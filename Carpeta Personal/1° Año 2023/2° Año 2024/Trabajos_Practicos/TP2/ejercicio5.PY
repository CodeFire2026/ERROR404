#Pedir dos palabras al usuario y mostrarlas en pantalla concatenadas, es decir, una seguida de la otra. 
#¿Cuáles son todas las maneras en que se pueden mostrar concatenadas en pantalla, cadenas de caracteres? 
#Uso de f-strings (formato de cadena):
#print(f"{palabra1}{palabra2}")

#Uso del método format:
#concatenadas = "{}{}".format(palabra1, palabra2)
#print(concatenadas)

#Uso de join con listas:
#concatenadas = "".join([palabra1, palabra2])
#print(concatenadas)

#¿Qué diferencia hay entre mostrarlas una seguida de otra en pantalla, y en concatenarlas?
#La diferencia entre mostrar cadenas una seguida de otra en pantalla y concatenarlas es principalmente estética y de eficiencia. 
#Mostrar cadenas una tras otra simplemente imprime cada cadena en una línea diferente en la salida, mientras que la concatenación crea una nueva cadena que contiene todas las cadenas combinadas.

# Solicito dos palabras al usuario
palabra1 = input("Por favor, ingrese la primera palabra: ")
palabra2 = input("Por favor, ingrese la segunda palabra: ")

# Mostrar las palabras concatenadas
concatenadas = palabra1 + palabra2
print(f"Las palabras concatenadas son: {concatenadas}")
