
# help(list) #Pour avoir la Doc

"""
liste[X] = Affiche élément d'indice X
liste[-X] = Affiche Xème élément  en partant de la fin de la liste

liste[:] = Affiche tous les elements
liste[:X] = Affiche les X premiers elements
liste[X:] = Affiche les X derniers elements

liste[A:B] = Affiche de l'element d'indice A à l'élement indice B (exclus)

"""



# Création d'une liste

"""
    # Liste vide 
inventaire = [] 

    # Initialiser une liste en multipliant les valeurs de cette liste
inventaire = ["arc"] * 10
print(inventaire)

    # Inserer des données de façon croissante dans une liste
invent = range(20)
for valeurs in invent:
    valeurs += 1
    print(valeurs)
"""


# Accéder à un élément
"""
inventaire = ["Arc", "col", "épée", "bouclier", "col", "Ok", "BMW", "Mercedes"]
    
    # Afficheage à partie de l'index d'une liste
print(inventaire[2])
    #Affiche l'element en question en comptant à partir de 1 du fin de la liste
print(inventaire[-5])
    # Afficheage tout le contenue du liste 
print(inventaire[:])
    # Affiche les N premiers elements d'une liste mais il commence compter à partir de 1 et 0
print(inventaire[:2])
    # Supprime le Nombre d'element qui est demandé dans la liste et Afficheage le reste du Tableau tout en comptant à partir de 1 depuis le debut de la liste 
print(inventaire[5:])
    #Affiche les élements à partir du 1er indice Jusqu'au dernier indice (- 1) c-t-d le dernier indice sera exclu lors de l'afficheage 
print(inventaire[2:5])

"""

# Mdofictaion de'une liste
"""
inventaire = ["Arc", "col", "épée", "bouclier"]
print(inventaire)

inventaire[2] = "d'acier"
# inventaire[:2] = "Bouclier d'acier"
# inventaire[:2] = ["Bouclier d'acier", "Bouclier d'acier"]
# inventaire[:2] = ["Bouclier d'acier"] * 2
# inventaire[:2] = ["Bouclier d'acier"] * len(inventaire)
# inventaire[:] = ["Bouclier d'acier"] * len(inventaire)
# inventaire[2:4] = ["Bouclier d'acier"] * 2
print(inventaire[:])

"""

#Recherche dans une liste
"""
inventaire = ["Arc", "col", "épée", "bouclier", 16]

if 16 in inventaire:
    print("Present")
else:
    print("Absent")

"""

# Les Methodes pour la manipulation des Tableaux
"""
inventaire = []
inventaire1 = [5, 8, 10, 10, 6, -5, 2]

inventaire.append("Rik")
inventaire.append("kihi")

inventaire.insert(0, "lol")
print(inventaire[:])

print(inventaire1[:])

# inventaire.remove("Rik")
# del inventaire[2]

    # Pour le Tri
inventaire.sort()
# inventaire1.sort()

inventaire1.reverse()

inventaire.clear()

print(inventaire[:])
print(inventaire1[:])

print("Nombre de fois que se repete le nombre : ", inventaire1.count(10))
"""


# Copie de liste
"""
import copy # Avoir une liste indépendant les une des autres

liste1 = ["Arc", "Boul", "Turnique", "Cool"]

# Ne fais pas de copie -> liste2 = liste1

liste2 = copy.deepcopy(liste1)

print("Liste 1", liste1[:])
print("Liste 2", liste2[:])

liste2.append("Potion de mana")

print("Liste 1", liste1[:])
print("Liste 2", liste2[:]) # On verra donc que la liste2 est differente de celle de la liste1
"""

#Concatenation
"""
liste1 = ["lOupe", "Turnique", "Cool"]

liste2 = ["Turnique", "Cool"]

# liste1.extend(liste2) 
    # Ou
liste1 += liste2

liste2.append("Nike")

print(liste1[:])
print(liste2[:])
"""

# Afficheage indice et la Valeur*

liste1 = ["lOupe", "Turnique", "Cool"]

print(len(liste1))

for index, value in enumerate(liste1):

    print(f"Element d'indice {index} -> {value}")


