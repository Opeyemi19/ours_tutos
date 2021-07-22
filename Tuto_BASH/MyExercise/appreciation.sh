#!/bin/bash    
 
appreciation () { 
    if [ "$note" -ge 16 ]; then 
        echo "très bien" 
    elif [ "$note" -ge 14 ]; then 
        echo "bien" 
    elif [ "$note" -ge 12 ]; then 
        echo "assez bien" 
    elif [ "$note" -ge 10 ]; then 
        echo "moyen" 
    else 
        echo "insuffisant" 
    fi 
} 
 
# programme principal 
clear 
if [ "$#" -ne 0 ]; then 
    note=$1 
else 
    echo "Saisir une note" 
    read -r note 
fi 
appreciation   
