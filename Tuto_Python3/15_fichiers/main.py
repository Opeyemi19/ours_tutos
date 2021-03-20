
"""
Modes d'ouverture   : r (lecture seule)
                    : w (écriture avec remplacement)
                    : a (écriture avec ajout en fin de fichier)
                    : x (lecture et écriture)
                    : r+ (lecture/écriture dans un même fichier)

Lecture             : read(), readline(), readlines()         

"""

#
"""
fic = open("data.txt", "r")

# content = fic.read()
content = fic.readline()
print(content)

content = fic.readline()
print(content)

content = fic.readlines()
print(content)

fic.close()

# if fic.closed:
#     print("Fichier fermé")
# else:
#     print("Fichier encore Ouvert")
"""


# Autre lecture de fichier
"""
with open("data.txt", "r") as fic:
    content = fic.read()
    print(content)
    # Pas besoin de fermer le fichier avec "with"
"""

#Ecriture dans le fichier
"""
with open("data1.txt", "w") as fic:
    nombre = 15
    fic.write(str(nombre))
    fic.write("\nBonjour, je suis une phrase\n")
    fic.write("Et une autre ...")
"""

#Creaction Objet Afin d'enregistrer dans notre en Binaaire

import pickle

class Player:
    def __init__(self, name, level):
        self.name   = name
        self.level  = level

    def whoami(self):
        print("{}  ({})".format(self.name, self.level))

p1 = Player("Jason", 10)
# p1.whoami()

    #Ecrire dans le fichier
"""
with open("player.data", "wb") as fic:
    record = pickle.Pickler(fic)
    record.dump(p1)
"""

    #Afficher le contenu du fichier
with open("player.data", "rb") as fic:
    get_record = pickle.Unpickler(fic)
    player_one = get_record.load()

player_one.whoami()