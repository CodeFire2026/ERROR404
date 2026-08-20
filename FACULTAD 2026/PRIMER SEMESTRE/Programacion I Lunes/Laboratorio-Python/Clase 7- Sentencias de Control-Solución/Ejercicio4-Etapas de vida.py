edad = int(input("Ingrese su edad: "))

if 0 <= edad <= 10:
    print("La infancia es increíble y bella")
elif 10 < edad <= 19:
    print("Tienes muchos cambios, mucho que estudiar")
elif 20 <= edad <= 29:
    print("Amor y comienza el trabajo")
elif 30 <= edad <= 39:
    print("Etapa de consolidación personal y laboral")
elif 40 <= edad <= 59:
    print("Experiencia y madurez en la vida")
elif 60 <= edad <= 100:
    print("Disfruta los frutos de tu experiencia")
else:
    print("Edad incorrecta")