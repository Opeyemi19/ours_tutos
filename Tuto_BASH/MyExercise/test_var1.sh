#!/bin/bash


compteur=1 ;
for arg in $*    # Equivalent à $@
do
  echo "Argument $compteur : $arg"
  ((compteur+=1))
done
