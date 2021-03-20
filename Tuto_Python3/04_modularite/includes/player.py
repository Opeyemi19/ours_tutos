def parler(personnage, message):
    print("{} : {}".format(personnage, message))

def au_revoir():
    print("Au revoir !!") 


# Faire le Test Isolé pour voir si nos differentes fonctions sont OK
if __name__ == "__main__":

    print("PHASE DE TEST DE PLAYER.PY")

    parler("Ope", "Hii Guy")
    au_revoir()