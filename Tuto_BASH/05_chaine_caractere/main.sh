#!/bin/bash

# ${#str} : Avoir la longueur d'un texte.

str='Hello World !'

echo ${#str}

#Afficheage Minuscule
echo ${str,,}
echo ${str,,[W]}

#Afficheage Majuscule
echo ${str^}
echo ${str^^[l]}

#Extraction de Chaine en fonction de la Longueur
echo ${str:6}
echo ${str:0:5}

#Remplacement de lettre dans la chaine
echo ${str/l/K}
echo ${str//l/k}
echo ${str/#H/t} # Debut de la chaine
echo ${str/%!/?} # Fin de la chaine

echo "${str:0:4}i${str:5}"

#Suppression de 
echo ${str/l/}
echo ${str//l/}
echo ${str#H*o}
echo ${str##H*o}


#Usage de printf avec le Bash
animal='chien'
age=6

printf "Coucou le ${animal}\n"
printf "Coucou le %s de %d ans\n" ${animal} ${age}






