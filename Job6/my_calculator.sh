#!/bin/bash
#Script pour créer une calculatrice avec des conditions

if [ $2 = "+" ]
then
	result=$(($1 + $3))
	echo "Vous avez choisi l'addition"
elif [  $2 = "-" ]
then
	result=$(($1 - $3))
	echo "Vous avez choisi la soustraction"
elif [ $2 = "x" ]
then
	result=$(($1 * $3))
	echo "Vous avez choisi la multiplication"
elif [ $2 = "/" ]
then
	result=$(($1 / $3))
	echo "Vous avez choisi la division"
else
	echo "ce n'est pas un bon opérateur, essayer avec +, -, x ou /"
	result=erreur
fi

echo "Resultat : "$result
