#coding:utf-8

jeu_lance = True
print("")

while jeu_lance:
    #Faites des instructions au report avec le jeu
    choixMenu = input("> ")

    if choixMenu == "again":
        continue
    elif choixMenu == "quit":
        # jeu_lance = False # OU
        break
    elif choixMenu == "hello":
        print("Bonjour :) !")
    else:
        print("Commande introuvable")

print("A bientôt ....")