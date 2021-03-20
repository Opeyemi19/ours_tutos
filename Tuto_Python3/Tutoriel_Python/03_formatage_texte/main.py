
#######################################################
# Syntaxe avec format()
#######################################################
"""
number = 164.4586255
text = 'Opeyemi'
dic = {"name" : "Jason",}

# Formatage de l'afficheage apres la virgule des nombres decimales
print("{:.2f}".format(number))

# Permet d'avoir des espace et creer des schemas avec la manipulations des caracteres
print("{:>10}".format(text))
print("{:10}/{}".format(text, "myTest"))

# Recherche dans le dictionnaire la valeur de la Clé en question
print("{name}".format(**dic))

"""


#######################################################
#Syntaxe "f-string"
#######################################################

my_name ="Rikilol"

li = [1, 2,3]

print(F"je m'appelle {my_name}")

print(f"{li}")