

"""
Une methode de chaine de caractere travaille sur des copie, et pas sur la chaine elle-même

str.upper(), str.lower(), str.capitalize(), str.title()
str.center(<largeur>, <caractere_remplissage>)
str.strip()
str.split()

str.find(<chaine>, <debut>, <fin>)
str.index(<chaine>, <debut>, <fin>)
str.replace(<ancienne>, <nouvelle>, <occurences>)

str.isalpha(), str.isdigit(), str.isdecimal(), str.isnumeric(), str.isalphanum()

str.islower(), str.isupper()

str.isidentifier(), str.iskeyword()

"""


#Verifie que sur les Chaine l'on travaille sur des Copie
"""
ch1 = "bonjour"
ch2 = ch1
print(ch1)
print(ch2)

# S'il ne travaillait pas sur une copie on allait avoir ch1 et ch2 pareil
ch1 = ch1.upper()
print(ch1)
print(ch2)

"""


# Classe str : string (chaîne de caractères)
"""
ch1 = "salut chers tous !!!"

ch2 = ch1.title()

print(ch2)
"""


# Centrrer une chaine et Remplissage d'espace vide par un caratère
"""
ma_chaine = "MonSuperPro"
print(ma_chaine)
ma_chaine = ma_chaine.center(50, "_")
print(ma_chaine)

"""


#Recherche un mot dans une chaine de caractere
"""
mch1 = "MonSuperPro"
print(mch1.find("Super"))
print(mch1.index("Super"))
    
    # Avec l'index on peut lever l'exception car lorsque le mot n'existe pas il retourne une Erreur tandis que le find retourne que (-1) lorsque le mot n'existe pas dans la chaine
try:
    print(mch1.index("super"))
except ValueError:
    print("Je n'ai pas trouvé cette chaine")

# Chercher un mot dans une phrase
ch = "Le langage Python"

if "langage" in ch:
    print("Trouvé")
else:
    print("Non trouvé")

"""


# Enlever l'espace au debut et à la fin d'un mot mais pas entre les mots d'une chaine de caractere

"""
ma_chain1 = "  à Salut  "
ma_chain2 = "[ Salut ]"
print(ma_chain1)
print(ma_chain1.strip())
print("---------------------------------")
print(ma_chain2)
print(ma_chain2.strip())

"""


# Remplacer une lettre ou autres dans une chaine de caractere

"""
mych = "Sodik Aderemi Riki"
print(mych.replace("i", "y"))
print(mych.replace("i", "y", 2))

"""

#Rendre une chaine de caracter en Liste
"""
phrase = "Magicien|10|Ope|SO"
print(phrase.split("|"))
"""

# Verification de type de donnée et l'etat de la chaine de caratere
ch = "class"

if ch.isidentifier():
    print("Reservé")
else:
    print("Libre")



