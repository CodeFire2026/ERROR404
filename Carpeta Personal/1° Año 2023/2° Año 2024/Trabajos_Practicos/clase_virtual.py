#progrmacion orientado a objeto 
# clases modelo o plantilla de algun objeto de la realidad  
#atributos y metodos (acciones) = funciones dentro de las clases  
#metodo especial que se llama constructor ---> es el metodo que va a inicializar los atributos de la clase 
#self hace referencia al objeto en si
#append agregamos elemtos alfinald e la lista 
#init inicializar los atributos de la clase
# objeto: es una instancia de una clase 
#__str__(self)--> str:
class persona():

    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def __str__(self) -> str:
        return "la edad de %s es: %d" % (persona2.name, persona.age)
    
    def walk(self):
        print ("estamos caminando")
    
    def programing(self):
        print ("estamos programando")

#del molde nosotros creamos objetos = son instancias de una clase
lista_de_persona = []
for i in range(5):
    person_name = input("ingrese el nombrree: ")
    persona_age = int (input ("ingrese la edad: "))
    lista_de_persona.append(persona)
for persona in lista_de_persona:
    print(persona)








persona1 = persona("jose", 39)
persona2 = persona("pepe", 40)
print(persona1.name) 
persona1.walk()
print("la edade de: %s es: %d" % (persona2.name, persona2.age))

print(persona1)