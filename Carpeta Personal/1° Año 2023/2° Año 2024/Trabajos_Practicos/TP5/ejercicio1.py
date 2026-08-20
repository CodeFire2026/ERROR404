import random
from collections import deque

class TorreDeControl:
    def __init__(self):
        self.cola_aterrizaje = deque()
        self.cola_despegue = deque()
        self.contador_aviones = 0
    
    def reconocimiento(self):
        # Randomly determine if a new plane arrives (0 for aterrizaje, 1 for despegue)
        llegada = random.randrange(2)
        self.contador_aviones += 1
        if llegada == 0:
            self.cola_aterrizaje.append(f"Avión {self.contador_aviones}")
        else:
            self.cola_despegue.append(f"Avión {self.contador_aviones}")
    
    def accion(self):
        if self.cola_aterrizaje:
            avion = self.cola_aterrizaje.popleft()
            return f"Aterriza {avion}"
        elif self.cola_despegue:
            avion = self.cola_despegue.popleft()
            return f"Despega {avion}"
        else:
            return "No hay aviones esperando"
    
    def __str__(self):
        estado_aterrizaje = ', '.join(self.cola_aterrizaje) if self.cola_aterrizaje else "Ninguno"
        estado_despegue = ', '.join(self.cola_despegue) if self.cola_despegue else "Ninguno"
        return (f"Cola de Aterrizaje: {estado_aterrizaje}\n"
                f"Cola de Despegue: {estado_despegue}")

# Programa principal
if __name__ == "__main__":
    torre = TorreDeControl()
    
    for _ in range(10):  # Realizar 10 ciclos de reconocimiento y acción
        torre.reconocimiento()
        print(torre.accion())
        print(torre)
        print("="*30)
