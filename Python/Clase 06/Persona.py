#class Persona: #Creamos una clase
# pass #No se procesa nada mas (no tiene contenido)
#print(type(Persona)) No devuelve el tipo de dato por que no tiene

#class Persona:
#def __init__(self): #Se lo llama metodo Init Dunder
#        self.nombre = "Juan"
#        self.apellido = "Zalazar"
#        self.edad = 22

#persona1=Persona()
#print(persona1.nombre)
#print(persona1.apellido)
#print(persona1.edad)

class Persona:
    def __init__(self, nombre, apellido, edad):
        self.nombre = nombre
        self.apellido = apellido
        self.edad = edad
    def mostrar_detalle(self):
        print(f"Persona: {self.nombre} {self.apellido} {self.edad}")

persona1 = Persona("Ariel", "Betancud", 40)
print(persona1.nombre)
print(persona1.apellido)
print(persona1.edad)

#TAREA

print(f"El objeto 1 de la clase persona: {persona1.nombre} y {persona1.apellido} su edad es {persona1.edad}")

persona2 = Persona("Esteban", "Jaque", 24)
print(f"el objeto 2 de la clase persona: {persona2.nombre} {persona2.apellido} su edad es {persona2.edad}")

persona1.nombre = "Axel"
persona1.apellido = "Navarrete"
persona1.edad = 20
print(f"El objeto 1 MODIFICADO de la clase persona: {persona1.nombre} y {persona1.apellido} su edad es {persona1.edad}")

#Los atributos son: caracteristicas
#Los metodos son: el comportamiento que van a tener los objetos (acciones)

persona1.mostrar_detalle()
persona2.mostrar_detalle()

