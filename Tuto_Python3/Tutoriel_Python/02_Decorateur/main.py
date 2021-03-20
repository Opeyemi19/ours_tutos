
"""
- Un décorateur est une fonction qui prend en paramètre une autre fonction et qui retourne une nouvelle fonction qui est prevue pour être décorer

- Modifer le comportement de départ(base) d'une fonction ou d'un package avec les décorateurs

Notation d'un décorateur :

    func = decorator(func)
    @decorator

    il sont de type : callable (fonction, methode); comme
                    : int, str, float, etc.

"""


#
"""
# Creaction du Decorateur
def decorator(func):
    print("-----------")
    return func

# Appel du decorateur
@decorator
def hello():
    print("hello !")

# hello = decorator(hello)

def hi():
    print("Hi !")


hello()
hi()
"""


#Decorateur Verify User Conexion
"""
user_logged = False

def check_user_logged(func):
    def wrapper():
        #Traitements
        if user_logged:
            return func() #On fait un appel de la fonction en question qui est mis en parametre de la fonction check_user_logged()
        else:
            print("Vous devez être connecté.")
    return wrapper


@check_user_logged
def profile():
    print("Le profil membre...")

@check_user_logged
def articles():
    print("Les articles...")


profile()
articles()
"""


# Verify UserName
"""
user_admin = "Jason"

def check_user(username):
    def decorator(func):
        def wrapper():
        
            if username == user_admin:
                return func()
            else:
                print("Utilisateur inconnu")
        return wrapper
    return decorator

 
@check_user("Jason1")
def profile():
    print("Le profil membre...")

#Autre appel du Decorateur dans notre Cas de Fonctions
# profile = check_user("Jason")(profile)

profile()
"""

# Perte d'information d'un decorateur 
import functools


user_admin = "Jason"

def check_user(username):
    def decorator(func):
        @functools.wraps(func) #Gere la perte d'infos pour la doc de notre Application; En afficheant les commentaires misent dans la fonction qui a le decorateur
        def wrapper():
            """
                Usage du wrapper
            """
            if username == user_admin:
                return func()
            else:
                print("Utilisateur inconnu")
        return wrapper
    return decorator

 
@check_user("Jason1")
def profile():

    """
        Page d'accès au profil de l'user
    """

    print("Le profil membre...")

#Autre appel du Decorateur dans notre Cas de Fonctions
# profile = check_user("Jason")(profile)

help(profile)