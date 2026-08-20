#Modelar una clase Mate que describa el funcionamiento del mismo:
#a) Un atributo para la cantidad de cebadas restantes hasta que se lava el mate (representada por un número).
#b) Un atributo para el estado (lleno o vacío).
#c) El constructor debe recibir como parámetro n, la cantidad máxima de cebadas en base
#a la cantidad de yerba vertida en el recipiente.
#d) Un método cebar, que llena el mate con agua. Si se intenta cebar con el mate lleno, se
#debe lanzar una excepción que imprima el mensaje Çuidado! Te quemaste!"
#e) Un método beber, que vacía el mate y le resta una cebada disponible. Si se intenta
#beber un mate vacío, se debe lanzar una excepción que imprima el mensaje .El mate está
#vacío!"
#f) Es posible seguir cebando y bebiendo el mate aunque no haya cebadas disponibes. En
#ese caso la cantidad de cebadas restantes se mantendrá en 0, y cada vez que se intente
#beber se debe imprimir un mensaje de aviso: .Advertencia: el mate está lavado.", pero no
#se debe lanzar una excepción.

class Mate:
    def _init_(self, n):
        self.max_cebadas = n
        self.cebadas_restantes = n
        self.estado = "vacío"

    def cebar(self):
        if self.estado == "lleno":
            print("Cuidado! Te quemaste!")
        else:
            self.estado = "lleno"

    def beber(self):
        if self.estado == "vacío":
            print("¡El mate no tiene agua!")
        else:
            self.estado = "vacío"
            if self.cebadas_restantes > 0:
                self.cebadas_restantes -= 1
            else:
                print("Advertencia: el mate está lavado.")

# Ejemplo de uso (Usar a gusto)

mate = Mate(3)  # Crea un mate con 3 cebadas disponibles

mate.cebar()  # Llenas el mate
mate.beber()  # Tomas el mate

mate.beber()  # Si no lo cebas antes, el mate va a estar vacio, por lo cual te muestra por pantalla el mensaje

mate.cebar()  # Llenas el mate nuevamente
mate.cebar()  # Si intentas llenar un mate ya lleno te vas a quemar

mate.beber()  # Tomas el mate
mate.beber()  # Tomas el mate (pero ahora tiene 1 cebada restante)
mate.cebar()  # Llenas el mate
mate.beber()  # Tomas el mate (pero ahora tiene 0 cebadas restantes)
mate.cebar()  # Llenas el mate
mate.beber()  # Tomas el mate (finalmente te muestra la advertencia que esta el mate lavado)
