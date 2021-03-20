"""
    Créaction de dictionnaire : dico = {} #vide
                                dico = {<cle>:<valeur>, <cle2>:<valeur>}

    Accès à une valeur         : dico[<cle>]
    Ajout et modification      : dico[<cle>] = <valeur>


    suppression                : dico.pop(<cle>)
                               : del dico[<cle>]

    Copie de Dictionnaire      : dico1 = {1:11, 2:22}
                                 dico2 = dico1.copy()

    Parametres Normé           : def NomFunction(**NomparametreFunction)
    Parametre de Variables     : def Nomfunction(*NomParametre) est un Parametre de Variables 
"""

#
"""
dico = {"chat": "C'est un félin", "chien":"Le meilleur ami de l'Homme"}

print(dico)

# valeur_suppression = dico.pop("chien")
# print(valeur_suppression)

#del dico["chat"]

print(dico)
"""

# Verification d'une clé dans le dictionnaire

"""
dico = {"chat": "C'est un félin", "chien":"Le meilleur ami de l'Homme"}

if "chien" in dico:
    print("Oui")
else:
    print("Non")

for (k,v) in dico.items():
    print(f"Clé : {k} -> Valeur : {v}")
"""

# Copie dictionnaire
"""
dico = {"chat": "C'est un félin", "chien":"Le meilleur ami de l'Homme"}

dico2 = dico.copy()

print(dico)
print(dico2)


dico2["ok"] = "Ok coul"

print(dico)
print(dico2)
"""

# Parametre Normé : Avec les parametres normés on peut rentrer nos données directement en Parametres de la function ce qui crée un Objet 


def maFunctionBizare(**parametres):
    print(parametres)

maFunctionBizare(p=12, p1=56, bad="Cool")