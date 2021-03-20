
name = "James"

def edit_name():

    # Rend cette variable Globale d'où, elle aura la valeur de celle qui est definie en dehors de la fonction 
    # Sinon sans le Global on assietra à une autre variable qui a le meme Nom
    global name

    name ="Lucou"


print(name)
edit_name()
print(name)