class Panda:
    def __init__(self, name, age):
        assert name.isalnum(), "Attribut 'name' : doit être alphanumérique (a-z, A-Z et 0-9)"
        assert len(name) > 3 and len(name) <= 25, "Attribut 'name' : nombre de caractères > 3 et <= 25"
        assert isinstance(age, int), "Attribut 'age' : doit être un entier (instance de 'int')"
        assert age > 0 and age <= 100, "Attribut 'age' : nombre > 0 et <= 100"
        self.name = name
        self.age = age
        self.hunger = 50


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