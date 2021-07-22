#!/bin/bash

# 1ère methode 

	# Cas 1
if grep christie /etc/passwd > /dev/null 
then 
	echo "L'user existe"
else
	echo "Aucun inscrit"
fi

	#Cas 2
grep christie /etc/passwd > /dev/null  
if [[ $? -eq 0 ]]    # ksh, bash (Bourne: utiliser [ ] )  
then  
	echo "L’utilisateur christie existe"  
else
	echo "L'user n'existe pas"
fi


# 2ème methode 
grep vagrant /etc/passwd > /dev/null && echo "L'user Vagrant existe"

