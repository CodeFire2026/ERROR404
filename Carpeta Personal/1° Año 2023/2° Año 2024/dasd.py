class Mate:
    def __init__(self, n):
        """
        Constructor que inicializa el mate con la cantidad máxima de cebadas especificada por n.
        """
        self.max_cebadas = n
        self.cebadas_restantes = n
        self.estado = "vacío"  # El mate comienza vacío

    def cebar(self):
        """
        Llena el mate con agua. Si el mate ya está lleno, lanza una excepción.
        """
        if self.estado == "lleno":
            raise Exception("¡Cuidado! ¡Te quemaste!")
        else:
            self.estado = "lleno"

    def beber(self):
        """
        Vacía el mate y le resta una cebada disponible. Si el mate está vacío, lanza una excepción.
        Si no hay cebadas disponibles, imprime una advertencia.
        """
        if self.estado == "vacío":
            raise Exception("¡El mate está vacío!")
        else:
            self.estado = "vacío"
            if self.cebadas_restantes > 0:
                self.cebadas_restantes -= 1
            if self.cebadas_restantes == 0:
                print("Advertencia: el mate está lavado.")

# Ejemplo de uso:
try:
    mate = Mate(3)  # El mate puede ser cebado 3 veces antes de estar lavado
    mate.cebar()    # Llena el mate
    mate.beber()    # Bebe el mate
    mate.beber()    # Intenta beber el mate vacío
except Exception as e:
    print(e)

try:
    mate.cebar()    # Llena el mate
    mate.cebar()    # Intenta llenar el mate lleno
except Exception as e:
    print(e)

mate.beber()        # Bebe el mate
mate.cebar()        # Llena el mate
mate.beber()        # Bebe el mate
mate.cebar()        # Llena el mate
mate.beber()        # Bebe el mate (advertencia: el mate está lavado)
