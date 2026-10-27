class Persona:
    contador_personas = 0

    def __init__(self, nombre, edad):
        Persona.contador_personas += 1
        self.id_persona = Persona.contador_personas
        self.nombre = nombre
        self.edad = edad

    def __str__(self):
        return f"persona [{self.id_persona} {self.nombre} {self.edad}]"

persona1 = Persona("juan", 21)
print(persona1)
persona2 = Persona("tizi", 20)
print(persona2)
persona3 = Persona("esteban", 19)
print(persona3)

print(f"valor contador personas: {persona2.contador_personas}")