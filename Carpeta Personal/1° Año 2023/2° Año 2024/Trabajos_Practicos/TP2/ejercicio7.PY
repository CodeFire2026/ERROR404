#7. Dada la siguiente lista de compras de ingredientes para preparar una torta, mostrarla en pantalla, un ingrediente por línea. Luego corregir el ultimo a” Canela en polvo” [”Chocolate”, ”Huevos”, ”Manteca”, ”Crema de leche”, ”Frutillas”]

ingredientes = ["Chocolate", "Huevos", "Manteca", "Crema de leche", "Frutillas"]

for ingrediente in ingredientes:
    print(ingrediente)

ingredientes[-1] = "Canela en polvo"

print("\nLista de ingredientes corregida:")
for ingrediente in ingredientes:
    print(ingrediente)
