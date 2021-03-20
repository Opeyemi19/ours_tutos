#!/bin/bash


    # Variable Globale
declare -i data=10 

<< 'M'
say_hello()
{   
        # Variables Locales
    local -i data1=25

    echo "$data"
    echo "$data1"
}

say_hello
# echo "$data1"

    # Retourne le resultat de la derniere commande tapée
echo $?

M


# source NomDuFichierSansExtension


hello()
{
    echo "Hello !"
    return 8
}

hello

echo $?

some_func()
{
    echo "HIII"
}


other_func()
{
    echo "Other le"
}


last_func()
{
    echo "Last function"
}


# declare -f
declare -F
# declare -f last_func
unset -f last_func
declare -F




