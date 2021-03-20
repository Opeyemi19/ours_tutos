#coding:utf-8

class Humain:
    """
    Classe des êtres humains
    """

    # Attribut de Classe
    humains_crees = 0

    def __init__(self, c_prenom, c_age=1):
        print("Création d'un Humain...")

        self.prenom = c_prenom
        self.age = c_age
        Humain.humains_crees += 1  # Signifie que dans la Classe Humain il y a un attribut de Classe humain_crees. Donc il sera accessible à tous les Objets.Doc il est comme une sorte de variable Globale en quelque sorte

print("Lancement du programme...")

# Objet h1 instance de la classe 
h1 = Humain("Jojo")
print("Pénom de h1 : {}".format(h1.prenom))
print("Age de h1 : {}".format(h1.age))
print("Humains existants h1 : {}".format(Humain.humains_crees))

# Objet h1 instance de la classe 
h2 = Humain("Micky", 56)
print(f"Pénom de h2 : {h2.prenom}")
print(f"Age de h2 : {h2.age}")
print("Humains existants h2 : {}".format(Humain.humains_crees))
