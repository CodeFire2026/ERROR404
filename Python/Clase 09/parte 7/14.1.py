class MiClase:
    variable_clase = "esta es una variable de calse"

    def __init__(self, variable_instancia):
        self.variable_instancia = variable_instancia

print(MiClase.variable_clase)
miClase1 = MiClase("esta es una variable de instancia")
print(miClase1.variable_instancia)
print("miClase1.cariable_clase")
miClase2 = MiClase("esta es otra prueba de variable de instancia")
print(miClase2.variable_instancia)
print(miClase2.variable_clase)

MiClase.variable_clase2 = "valor de variable de calse 2"
print(MiClase.variable_clase2)
print(miClase1.variable_clase2)
print(miClase2.variable_clase2)
