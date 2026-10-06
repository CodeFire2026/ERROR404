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
    def __init__(self, nombre, apellido, dni, edad, *args, **kwargs): #Se lo llama metodo Init Dunder
        self.nombre = nombre
        self.apellido = apellido
        self._dni = dni #Este atributo esta encapsulado de una manera sugerida
        self.edad = edad
        self.args = args
        self.kwargs = kwargs
    def mostrar_detalle(self): # self es igual a this
        print(f"La clase Persona tiene los siguientes datos: {self.nombre} {self.apellido} {self._dni} {self.edad}, la dirección es: {self.args}, los datos importantes son: {self.kwargs}")

persona1 = Persona("Ariel", "Betancud", 32456987, 40)
print(persona1.nombre)
print(persona1.apellido)
print(persona1.edad)

#TAREA

print(f"El objeto 1 de la clase persona: {persona1.nombre} y {persona1.apellido} su edad es {persona1.edad}")

persona2 = Persona("Esteban", "Jaque", 39777769, 24)
print(f"el objeto 2 de la clase persona: {persona2.nombre} {persona2.apellido} su edad es {persona2.edad}")

persona1.nombre = "Axel"
persona1.apellido = "Navarrete"
persona1.edad = 20
print(f"El objeto 1 MODIFICADO de la clase persona: {persona1.nombre} y {persona1.apellido} su edad es {persona1.edad}")

#Los atributos son: caracteristicas
#Los metodos son: el comportamiento que van a tener los objetos (acciones)

persona1.mostrar_detalle() # La referencia en este caso se pasa de manera automática
persona2.mostrar_detalle()

# Persona.mostrar_detalle(persona1) # Debemos pasarle una referencia para el self o dará error
persona1.telefono = '44445555289'
print(f'Este es el telefono de: {persona1.nombre} {persona1.telefono}') # Hemos creado un atributo de un objeto

# print(persona2.telefono) el objeto persona2 no tiene este atributo, da error
persona3 = Persona('Rogelio', 'Romero',35678900, 22,'Telefono', '2614445557','Calle Lopez',823,'Manzana',77,'Casa',18,Altura=1.83, Peso=105, CFavorito='Azul', Auto='Citroen', Modelo=2021)
persona3.mostrar_detalle()
# print(persona3._dni) # esto no se debe utilizar(esta encapsulado), esto dice que lo desconocemos python
# persona3.__nombre # Esta totalmente encapsulado