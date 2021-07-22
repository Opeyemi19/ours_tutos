#!/bin/bash

# some_dat=568
# echo $some_dat

# some_dat='rikill'
# echo $some_dat

#######################  Type de Syntaxe d'afficheage ######################

# str1='Jason $data'
# str2="Bienvenue $str1"
# str3=`ls -a`

# echo $str3

#######################  Type de Saisir ######################

    ##### Les Commande read :

        # p - ajouter un texte avant la saisie
        # s - masquer la saisoe
        # n - limiter à N caractère lus
        # t - autoriser la saisie pendant N secondes

# read -p "Comment t'appelles tu ? " -t 2 name
# echo -e "\n Saisie : $name"
        

#######################  Type de Lecture ######################

        # readonly ou declare -r : Avoir la lecture en lecture seule
    
    # La Commande declare :
        # r (lecture seule)
        # i (numérique)
        # a
        # etc.

# declare -r data=14
# echo $data
# data=85
# echo $data

########################################## Variable Parametre Saisie ########################

    # $# : Nombre de paramètres saisies
    # $0 : fichier en Exécutable. Ex: Ici c'est le main.sh
    # $1 à $9 : paramètres 1 à 9 #Il va retourner les parametres entrées en fonction de la variable que nous avons mis. Ex: ./main.sh sodik Ope YES rik nick ==> $3(Retourne les Trois premiers paramètres entrées)
    # ${X} : paramètre X #Retournera les parametres entrée à partir de 10 parametres car l'autre s termine à 9.
    # $$(Retoune un ID du Processeur à chaque execution),$#, $*(Retourne tous les elements mais sous la forme de chaîne de caracteres), $@(Va gerer autant de chaîne qu'il y a d'indiquer précisement)

    # echo "$1 ------ $2"
    # echo ${5}


##########################################    ########################
current_directory=$(pwd)

data=$((14+65)) # OU
let data1=14+6


echo $current_directory
echo $data
echo $data1

# Supprimer le contenu de la data
unset data
echo $data
