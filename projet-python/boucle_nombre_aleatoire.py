from random import randint
nombre_genere = randint(0, 9)
chance = 3
while chance > 0:
     nombre = int(input("Veuillez entrer un nombre compris entre 0 et 9: "))
     if nombre == nombre_genere:
           print ("Bravo, le nombre entré correspond à celui généré!")
           break
     elif nombre != nombre_genere:
           print ("Réessayez!")
     chance -= 1
else:
     print ("Désolé, vous avez échoué 3 fois!")
