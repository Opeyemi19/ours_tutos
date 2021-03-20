
# Methode Simple
"""
class Humain:
    
    # Classe des êtres humains
    

    def __init__(self, c_prenom, c_age=1):
        self.prenom = c_prenom
        self.age = c_age

    # C'est une methode tout cour car il faut qu'il existe un objet pour pouvoir faire appel à cette fonction
    def parler(self, message): # self = méthode standard 
        print(f"{self.prenom} a dit : {message}")
    

#Objet h1
h1 = Humain("Jason", 45)

h1.parler("Bonjour à tous ! :)")
h1.parler("Comment allez vous ! :)")
"""



# Methode de Classse : on travaille directement sur la classe
"""
class Humain:
    
    #Classe des êtres humains
    

    lieu_habitation ="Terre"

    def __init__(self, prenom, age=1):
        self.prenom = prenom
        self.age = age

   
    def parler(self, message):
        print(f"{self.prenom} a dit : {message}")
    
    
    def changer_planete(cls, nouvelle_planete): # cls = methode de classe
        Humain.lieu_habitation = nouvelle_planete
    change_plane = classmethod(changer_planete) # classmethod()  : Rendre la méthode en une methode de Classe


# Programme Principal
h1 = Humain("Jason", 45)

print(f"Planete actuelle : {Humain.lieu_habitation}")

Humain.lieu_habitation = "Mars"

print(f"Planete actuelle : {Humain.lieu_habitation}")

"""


# Methode Statique : N'est pas lié à un Objet ou une instance mais il est liée au Classe car il est independant dans la classe en question
class Humain:
    """
    #Classe des êtres humains
    """

    lieu_habitation ="Terre"

    def __init__(self, prenom, age=1):
        self.prenom = prenom
        self.age = age

   
    def parler(self, message):
        print(f"{self.prenom} a dit : {message}")
    
    
    def changer_planete(cls, nouvelle_planete): # cls = methode de classe
        Humain.lieu_habitation = nouvelle_planete
    change_plane = classmethod(changer_planete) # classmethod()  : Rendre la méthode en une methode de Classe


    def definition():
        print("L'Humain est classé comme étant le plus haut être-vivant de terre")



Humain.definition()
