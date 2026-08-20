# COLA
class Stack:
    def _init_(self):
        self.my_stack = []

    def push(self, element):
        self.my_stack.append(element)
        
    def pop(self):
        if self.is_empty():
            print("La pila está vacía")
        else:
            self.my_stack.pop(0)
            
    def is_empty(self):
        return self.my_stack == []
    
    def get_peek(self): # Devolver el último elemento
        if not self.is_empty():
            return self.my_stack[0]
        else:
            return "La pila está vacía"
    
    def get_length(self):
        return len(self.my_stack)

pila = Stack() # Instanciamos la clase
pila.push("A")
pila.push("B")
pila.push("C")
pila.pop()
print(pila.my_stack)
print(pila.get_length())
print(pila.get_peek())