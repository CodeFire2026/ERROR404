#11. Leer dos números y determinar cuál de ellos es el mayor, mostrando por pantalla “El valor mayor es:” y el correspondiente número.

number = int(input("Ingrese su edad: "))

if number <=17 :
    print ("Sos menor de edad no puedes acceder ")
elif number >=18 and number <=59:
    print ("Sos mayor de edad puedes acceder ")
