#Usage de Doctest pour faire très vite des Test de notre Application avant de se faire des Class pour utiliser des unittest

# Juste un petit Test pour veifier que c'est une instance de la Classe Panda
"""
classe qui répresente un Panda
>>> isinstance(Panda("Kinou", 150), Panda)
True
>>> Panda.get_number_50()
50
"""


class Panda:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        self.hunger = 50


    
    def get_number_50():
        return 50


    def __str__(self):
        return f"[Nom : {self.name} / Age : {self.age} / Faim : {self.hunger}/100]"

    def eat(self, food_points):
        if self.hunger >= 100:
            print(f"{self.name} a déjà bien mangé (faim : {self.hunger})")
        else:
            self.hunger += food_points
            if self.hunger > 100:
                print("Quel festin !")
                self.hunger = 100
            
            print(f"{self.name} vient de manger (faim : {self.hunger})")

    
    def talk(self):
        print("Niow !!!")
    
    def sleep(self):
        print("ZzzzzZzzZZzz")




if __name__ == '__main__':
    import doctest
    doctest.testmod()