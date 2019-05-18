from random import *
x = randint(0,9)
nombre= int(input("Veuillez entrer un nombre compris entre 0 et 9 "))
if nombre == x :
    print("Bravo, le nombre entré correspond à celui généré")
else:
    print("Dommage, le nombre entré ne correspond pas à celui généré")