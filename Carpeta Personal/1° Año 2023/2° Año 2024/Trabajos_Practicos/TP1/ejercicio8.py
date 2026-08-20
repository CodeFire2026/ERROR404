#8. Pedir dos valores numéricos. Calcular y mostrar la suma, resta, multiplicación y división de ambos.
num1 = float(input("Ingrese el primer número: "))
num2 = float(input("Ingrese el segundo número: "))

suma = num1 + num2
resta = num1 - num2
multiplicacion = num1 * num2

# Asegurémonos de que el segundo número no sea cero para evitar una división por cero
if num2 != 0:
    division = num1 / num2
else:
    division = "No se puede dividir por cero"

print("Suma:", suma)
print("Resta:", resta)
print("Multiplicación:", multiplicacion)
print("División:", division)
