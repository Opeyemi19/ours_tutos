#coding:utf-8


"""
def dire(nom_personne="Tom", message_personne="Salut", age_personne=18):
    print(f"{nom_personne} {age_personne} ans : {message_personne}")

dire(message_personne="Yi", age_personne=63, nom_personne="Roger")
"""

# Nombre Illimité d'un parametre d'une fonction grace à l'étoile mis au coté du parametre (*SeulParametreEnQuestion)
def show_inventory(*list_items):
    for item in list_items:
        print(item)

show_inventory("va")
show_inventory("epee", "arc", "potion de mana", "cape de Dragon", "Rouge")