
"""
Propriété : manière de manipuler/contrôler des attributs avec le principe d'encapsulation ! 
"""

# Si l'on va manipuler le getter et setter de ce genre là il serait mieux d'ennlever car il joue le meme rôle que celui de l'atrribut Normal. Ici si l'on enleve des getter et setter cela va toujours marcher avec les attributs dans la mesure où on fait aucun contrôle sur ses propriétés
"""
class Humain:

    def __init__(self, prenom, age):
        print("Création d'un Humain...")
        self.prenom = prenom
        self._age = age # On identifie une Propriété grâce à "_"

    def _getage(self):
        return self._age

    def _setage(self, nouvel_age):
        self._age = nouvel_age

    # property(<getter>, <setter>, <deleter>, <helper>)
    age = property(_getage, _setage)


h1 = Humain("Jason", 45)

print(h1.age)

h1.age = 20

print(h1.age)

"""

# Dans le cas où les propriétés sont importants car l'on effetue un contrôle sur les Getters et Setters 
"""
class Humain:

    def __init__(self, prenom, age):
        print("Création d'un Humain...")
        self.prenom = prenom
        self._age = age # On identifie une Propriété grâce à "_"

    def _getage(self):
        return self._age

    def _setage(self, nouvel_age):
        if nouvel_age < 0:
            self._age = 0
        else:
            self._age = nouvel_age

    # property(<getter>, <setter>, <deleter>, <helper>)
    age = property(_getage, _setage)


h1 = Humain("Jason", 45)
print(h1.age)
h1.age = -8
print(h1.age)
"""

# Usage des deux autres parametres de Property
"""
class Humain:

    def __init__(self, prenom, age):
        print("Création d'un Humain...")
        self.prenom = prenom
        self._age = age # On identifie une Propriété grâce à "_"

    def _getage(self):
        try:
            return self._age
        except AttributeError:
            print("L'age n'existe pas !")

    def _setage(self, nouvel_age):
        if nouvel_age < 0:
            self._age = 0
        else:
            self._age = nouvel_age

    def _delage(self):
        del self._age


    # property(<getter>, <setter>, <deleter>, <helper>)
    age = property(_getage, _setage, _delage, "Je suis l'age d'un Humain")


h1 = Humain("Jason", 45)
print(h1.age)

# Pour le delete
del h1.age

print(h1.age)

# Pour le Help
help(Humain.age)

"""
# La modif sur le Getter seulement en Example
class Humain:

    def __init__(self, prenom, age):
        print("Création d'un Humain...")
        self.prenom = prenom
        self._age = age # On identifie une Propriété grâce à "_"

    def _getage(self):
        if self._age <= 1:
            return str(self._age) + ' an'
        else:
            return str(self._age) + " ans"


    # property(<getter>, <setter>, <deleter>, <helper>)
    age = property(_getage)

h1 = Humain("Jason", 45)
print(f"{h1.prenom} = {h1.age}")



































