# List comprehension, lista de comprensión

names = ["Paolo", "Rodrigo", "Lupe", "Pepe"]

# Esto regresa una nueva lista con los nombres que empiezan con P
alongP = [p for p in names if p[0] == "P"]

print(alongP)


# Lista de diccionarios
bottlec = [
    {"name": "Quilmes", "country": "Arg"},
    {"name": "Corona", "country": "Mx"},
    {"name": "Stella Artois", "country": "Belgium"}
]

# Filtrar las bebidas cuyo país sea Argentina
arg = [b for b in bottlec if b["country"] == "Arg"]
print(arg)
print(bottlec)