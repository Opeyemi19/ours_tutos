#!/bin/bash 

fichier="fichierNote.txt"

while read -r ligne; do 
    set -- "$ligne" 
    if [ "$3" -ge 10 ]; then
        echo "$ligne" 
    fi 
done < $fichier
