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

    # $# : Nombre de paramètres
    # $0 : Exécutable
    # $1 à $9 : paramètres 1 à 9 
    # ${X} : paramètre X
    # $$,$#, $*, $@

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