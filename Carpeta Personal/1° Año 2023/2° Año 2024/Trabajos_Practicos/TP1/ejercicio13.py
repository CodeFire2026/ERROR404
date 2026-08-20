#13. Realizar un programa que lea dos números enteros desde teclado e informe en pantalla cuál de los dos números es el mayor. Si son iguales debe informar en pantalla lo siguiente: “Los números leídos son iguales”

num1 = int(input("Ingrese el primer número entero: "))
num2 = int(input("Ingrese el segundo número entero: "))

if num1 > num2:
    print("El número", num1, "es mayor que", num2)
elif num2 > num1:
    print("El número", num2, "es mayor que", num1)
else:
    print("Los números leídos son iguales.")
