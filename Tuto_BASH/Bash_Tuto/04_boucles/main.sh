#!/bin/bash

##################################### la boucle While ####################################################


# until le contraire de while

let i=0

while ((i < 10))
do

    echo $i
    i=$(($i +1))

done

echo 'Fin du script'


##################################### la boucle For ####################################################


    # La saisie au clavier sera recuperé grace à ($@) et parcourt par la boucle. 
    #Le $@ est different de "$@" cas avec ("$@"), la cote de trois qui se trouve dans notre saisie sera prise sous forme du groupe de mot et non en un seul mot.

for arg in "$@"
do
    echo $arg
done

for ((i = 0; i<10; i++))
do
    echo $i
done



