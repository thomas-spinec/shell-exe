#!/bin/bash
#Une boucle qui s'incrémente jusqu'à 10
var=1

#
while [ $var != 11 ]
do 
	echo "Je suis un script qui arrive à faire une boucle "$var
	((var=var+1))
done

