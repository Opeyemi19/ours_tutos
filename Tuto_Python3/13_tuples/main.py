
"""

(!) Tuple : conteneur immuable (dont on ne peut modifier les valeurs)

Création de tuple   : mon_tuple = ()        #vide
                      mon_tuple = 17,       #Une seule valeur
                      mon_tuple = (17,)     #Idem qu'au-dessus
                      mon_tuple = (4, 6)    #Plusieurs valeurs



Avantage du Tuple :

    - Faire une affectation multiples
    - Retour multiple de la fonction



"""



#
"""
liste = [1, 2, 3, 4, 5, 6, 7]

for chose in enumerate(liste):
    print(chose)

"""

# Creaction de Tuple
"""
mon_tuple = (45,45)

print(mon_tuple[1])
"""

#Affectations Multiples, avec la possibité de modifier ces valeurs; Cela marche que si c'est l'affectation Multiples

"""
(nombre1, nombre2) = (14, 69)

print(nombre1,"\n",nombre2)

nombre1 = 555

print(nombre1)

"""

# Retour Multiple de fonctions

def get_player_position():
    posX = 148
    posY = 85

    return (posX, posY)

#Programme principal

coordX = 0
coordY = 0

print(f"Position du joueur : {coordX}/{coordY}")

(coordX, coordY) = get_player_position() # Affectation multiples

coordX = 1526
coordY = 621

print(f"Position du joueur : {coordX}/{coordY}")








