#!/bin/bash 


<< 'M'
if [ "$#" -lt 1 ]; then 
    echo "Saisir le nom du fichier" 
    read -r fichier 
else 
    fichier="$1" 
fi 

while read -r ligne; do 
    set -- "$ligne"
   
    #let moyenne=$(($2+$3+$4)/3)
    echo "L'élève $1 a pour moyenne" 
done < "$fichier"

M

moyenne() {
    declare -i somme
    for i in "$@"; do
        somme+="$i"
    done
    echo "$((somme / ${#@}))"
}

[ -f "$1" ] && fichier="$1" || read -rep 'Entrez le nom du fichier qui contient les données : ' fichier

while read -r nom notes; do
    echo -n "$nom : "
    moyenne $notes
done < "$fichier"

