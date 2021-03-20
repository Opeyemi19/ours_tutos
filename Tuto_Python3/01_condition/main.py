
"""
    Conditions multiples    :   and (ET)
                            :   or (OU)
                                in / not in (DANS / PAS DANS)

"""

lettre_hasard = "t"

#True = vrai (=1)
#False = faux (=0)
jeu_charge = False 

if lettre_hasard in "fofooencli":
    print("C'est une voyelle")
else:
    print("C'est une consonne")

if jeu_charge:
    print("Le jeu est en cours")
elif not jeu_charge:
    print("Le jeu est éteint")
else:
    print("Le jeu est lancé")