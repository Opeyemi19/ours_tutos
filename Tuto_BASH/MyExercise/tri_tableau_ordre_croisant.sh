#!/bin/bash 
  
if [ "$#" -lt 1 ]; then 
    echo "Saisir le nombre d'éléments à ordonner" 
    read -r SIZE 
else 
    SIZE=$1 
fi 
 
echo "Saisir les éléments :" 
 
for (( i=0 ; i<SIZE ; i++ )); do 
    read -r tab[i] 
done 
 
for (( i=0 ; i<SIZE ; i++ )); do 
    for (( j=$i+1 ; j<SIZE ; j++ )) 
    do 
        if [ "${tab[$j]}" -le "${tab[$i]}" ]; then 
            tampon="${tab[$i]}" 
            tab[$i]="${tab[$j]}" 
            tab[$j]="$tampon" 
        fi 
    done 
done 
 
echo "Valeurs ordonnées :" 
 
for (( i=0 ; i<SIZE ; i++ )); do 
    echo "${tab[$i]}" 
done
