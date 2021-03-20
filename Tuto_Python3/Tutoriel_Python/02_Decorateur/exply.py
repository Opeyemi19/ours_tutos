

class Player:
    def __init__(self, name):
        self.name = name

    @property
    def get_name(self):
        return self.get_name
    
    @property.setter
    def set_name(self, name):
        if len(name) <= 25:
            self._name = name
        else:
            print("Nom incorect 25 caracteres requis")

    @staticmethod
    def my_static_fonction:
        pass
    
    @classmethod
    def my_class_fonctio:
        pass 