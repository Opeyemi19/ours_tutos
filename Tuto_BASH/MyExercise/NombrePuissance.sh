#!/bin/bash

myNombrePuissance () {	
	result=1
	for (( i=0 ; i<$value ; i++ ))
	do
		let result=$result*$value
	done
	echo "$value^$value = $result"
}

if [ "$#" -eq 0 ]; then
	echo "Saisir un valeur"
	read -r value
else
	value=$1

fi
myNombrePuissance
