#coding:utf-8

"""
    Gérer les exceptions : try/except (+ eldse, finally)

    Types d'exceptions    : ValueError
                            NameError
                            TypeError
                            ZeroDivisionError
                            OSError
                            AssertionError
"""

"""
nombre1 = 150

nombre2 = input("Choisir le nombre pour diviser ?")

try:
      = int(nombre2)
    print("Résultat = {}".format(nombre1/nombre2))
except ZeroDivisionError:
    print("Vous ne pouvez pas diviser un nombre par zéro")
except ValueError:
    print("Veuiller entrer un nombre !!")
except:
    print("Valeur incorrect")
else:
    print("Bravo, tu as noté un nombre valide !")
finally:
    print("Fin du programme...")
"""


""" Elevation d'exceptions """
 

try:
    age = input("Quel âge as-tu ?")
    age = int(age)

    assert age > 25 #Je veux que age soit plus grand que 25, sinon je capte l'Erreur en question
except AssertionError: # Agir lorsque notre condition emis n'est pas respecté
    print("J'ai attrapé l'exception")
else:
    print("la valeur Ok")