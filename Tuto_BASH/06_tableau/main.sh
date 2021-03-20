#!/bin/bash

declare -a index_array=(2 5 96 12)
declare -a index_array2=(14 92 25 58)

declare -A assoc_array=(["prenom"]="Jack" ["nom"]="DURAND")

# for number in ${index_array[@]}
# do
#     echo $number
# done

# echo ${index_array[-2]}

#Afficheage des clé
# echo ${!assoc_array[@]}
#Taille tableau
# echo ${#assoc_array[@]}
#Ajout
# assoc_array[age]=25
# echo ${assoc_array[age]}



declare -a new_index_array=(55 ${index_array[@]})
echo ${new_index_array[@]}

declare -a new_index_array1=(${index_array[*]} ${index_array2[*]})
echo ${new_index_array1}

#Supression de Tableau
unset new_index_array1
echo ${new_index_array1}

