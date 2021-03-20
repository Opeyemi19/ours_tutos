#!/bin/bash

# Condition pour les Nombres

#   -lt (Inferieur), -le (Inferieur ou égal) 
#   -gt (Superieur), -ge (Supérieur ou égal)
#   -eq (egal), -ne (n'est pas egal)


# ||, &&

<< 'M'

nb1=29
nb2=28
nb3=24

if [ $nb1 -lt $nb2 ] || [ $nb1 -eq $nb2 ] ; then
    echo 'nb1 < nb2'
elif [ $nb1 -gt $nb2 ] && [ $nb1 -ne $nb2 ] ; then
    echo 'nb1 > nb2'
else
    echo 'Aucun Resultat correct'
fi

M


# Condition pour les Chaines de caracteres

#  =, !=
# -z (Chaine vide) et -n (Non vide)

<< 'M'

str1='hello'
str2='world'
str3=''

if [ $str1 = $str2 ] ; then
    echo 'EGALES'
elif [ -z $str3 ] ; then
    echo 'Vide :('
else
    echo "N'est pas egale"
fi

M

# Qlque Commandes :

# -e : existe dans le répertoire courant
# -f : si c'est un fichier
# -d : si c'est un répertoire

# -r : disponible en lecture 
# -w : disponible en écriture 
# -x : disponible en exécution

# -N : s'il y a eu modification depuis dernier accès
# -s : si un fichier a une taille > 0

if [ -s 'test.sh' ] ; then
    echo "C' Ok" 
fi


################################### Autre condition equivalent de Switch dans les autres langages ########################################

read -p "> " cmd

case $cmd in 

    1)  echo 'Un';;
    2)  echo 'Deux';;
    3)  echo 'Trois';;
    30) echo 'Trente';;
    *)  echo $cmd;;

esac





