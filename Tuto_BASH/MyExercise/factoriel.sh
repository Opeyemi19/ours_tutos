#!/bin/bash

<< 'M'

#1ere methode

if [ "$#" -eq 0 ]; then
    echo "Saisir une valeur : "
    read -r val
else
    val=$1
fi

# Dans le cas où c'est négatif, on rend la valeur positive
if [ "$val" -lt 0 ]; then
    let val=-1*$val
fi

result=1
val2="$val"

while [ "$val" -ne 0 ]; do
    printf "$val "
    let result=$result*$val
    let val=$val-1
    if [ "$val" -ne 0 ]; then
        printf "* "
    fi
done

echo "= $result"

M


# 2eme methode

if test "$#" -eq 0; then
    echo "Saisissez une valeur correcte"
    read -r val
    set -- $val
fi

nb=${nb:-$1}
res=${res:-1}
if test "$nb" -eq 0; then
    echo $res
    exit
fi

res=`expr $res \* $nb`
nb=`expr $nb - 1`
. $0




