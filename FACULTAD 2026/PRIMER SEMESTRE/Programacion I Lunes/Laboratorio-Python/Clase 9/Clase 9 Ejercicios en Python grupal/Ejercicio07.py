#Dadas las horas trabajadas de 5 personas y la
#tarifa de pago, calcular el salario, y la sumatoria de
#todos los salarios.

i = 1
suma = 0

while i <= 5:

    print(f"El salario del empleado {i}: ")
    horas_Trabajadas = float(input("Ingresar las horas trabajadas del empleado: "))
    tarifa = float(input("Ingresar la tarifa por hora: "))

    salario = horas_Trabajadas * tarifa
    print(f"El salario del empleado {i} es: ${salario}")
    suma = suma + salario
    i = i + 1
    ''
print("La suma de los salarios es:", suma)
