vacaciones = input("¿Tiene vacaciones? (True/False): ")
dia_libre = input("¿Tiene día libre? (True/False): ")

vacaciones = vacaciones == "True"
dia_libre = dia_libre == "True"

if vacaciones or dia_libre:
    print("Puede asistir al juego de su hijo")
else:
    print("No puede asistir al juego de su hijo")