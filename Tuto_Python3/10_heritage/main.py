
"""
Fonctions utiles : 
    
    isinstance(<objet>, <classe>) : vérifie q'un objet est de la classe renseignée

    issubclass(<classe_fille>, <classe_mere>) : vérifie q'une classe est fille d'une autre

"""




# Classe Mère
"""
class Vehicule:
    def __init__(self, nom_vehicule, quantite_essence):
        self.nom = nom_vehicule
        self.essence = quantite_essence

    def se_deplacer(self):
        print("Le véhicule {} se déplace...".format(self.nom))


#Classe Filles : Herite de tous les Attributs et Methodes de Classe Mère; Apres cette Classe Fille peut être extensier en ajoutant d'autre Attribut et Methodes propre à la Cette Classe Filles 
class Voiture(Vehicule):
    def __init__(self, nom_voiture, essence, puissance):
        Vehicule.__init__(self, nom_voiture, essence)
        self.puissance = puissance

    def se_deplacer(self):
        print("Je roule sur le Guidron §!!!")


class Avion(Vehicule):
    def __init__(self, nom_voiture, essence, marchandise):
        Vehicule.__init__(self, nom_voiture, essence)
        self.marchandise = marchandise

    def se_deplacer(self):
        print("Je survole en Air !!!")




#Programme principal
voiture1 = Voiture("Toyota Supra", 90, 420)
voiture1.se_deplacer()
print(voiture1.puissance, "Ok")

av1 = Avion("AirBus 320", 85, "Aucune Marchandises")
av1.se_deplacer()

"""


# Usage des Fonctions Pour la verifications des Objets de classe

class Animal:
    def __init__(self, nom):
        self.nom = nom

    def manger(self):
        print(self.nom, "mange...")



class Reptile(Animal):
    def __init__(self, nom, regime_alimentaire):
        Animal.__init__(self, nom)
        self.regime_alimentaire = regime_alimentaire


    def manger(self):
        print("Le reptile mange...")



#Code Principal
lezard = Reptile("lezard", "grenouilles")

if isinstance(lezard, Animal):
    print("Lézard est un Animal")
























