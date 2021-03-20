import time


"""
              localtime()
    (TIMESTAMP) --------------> structure de temps
                <---------------
                    mktime()

%d : jour (01 à 31)
%m : mois (01 à 12)
%Y : année (ex: 2021) - %y (00 à 99)
%H : heures (00 à 23)
%I : minutes (00 à 59)
%S : secondes (00 à 59)
%p : AM/PM


%A : jour semaine / %a (jour abrégé)
%B : mois / %b (mois abrégé)


%Z : fuseau horaire (timezone)

"""


"""
print("Le premier test")

time.sleep(5)

print("Le second test")
"""
#1er Janvier 1970 à 00h00
# print(time.time())

#Donne le Temps pour executer un programme ce qui est très interresant pour verifier le temps d'execution d'un code afin de l'optimiser
"""
begin = time.time()
print("Début")

time.sleep(5)

end = time.time()
print("Fin")

print(f"Temps exécuté : {end - begin}s")
"""

# Structure de temps et timestamp
"""
tps = time.localtime()
print(tps)

tps = time.mktime(tps)
print(tps)
"""


# Formatage des Dates
print(time.strftime("%Z"))