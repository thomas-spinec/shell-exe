#!/bin/bash
cd /home/thomas/Documents/La_plateforme/git/shell-exe/Job9

#nb_ligne=`wc -l Shell_Userlist.csv`
#for ((a=1; a = nb_ligne nb_ligne; a++))
#do
#	grep *$a droits.txt | colonnes | adduser
################################################################
#while IFS="," read id prenom nom mdp role
#do
#	echo "id:$id prenom:$prenom nom:$nom mdp:$mdp rôle:$role"
#done	
###############################################################
#nb=`wc -l Shell_Userlist.csv`
#IFS=','
#for line in $nb
#do
# read Id Prenom Prenom Nom Mdp Role
# echo "Id:$Id Premon:$Prenom Nom:$Nom  Mdp:$Mdp Role:$Role"
#done <Shell_Userlist.csv

###############################################################
cat Shell_Userlist.csv | while read varligne
do
	password=`echo $varligne |cut -d ',' -f4`
	username=`echo $varligne |cut -d ',' -f2`
	username=`echo ${username,,}`
	role=`echo $varligne |cut -d ',' -f5`
	echo $role
	if [ ${role:0:5} = "Admin" ]
	then
		echo "creation de l'utilisateur : $username"
		#sudo useradd -m -d /home/$username $username
		sudo useradd -m $username -p $password
		echo "changement du role de : $username"
		sudo usermod -aG sudo $username
		#echo $username:$password | chpasswd
	else 
		echo "creation de l'utilisateur : $username"
		#sudo useradd -m -d /home/$username $username
		sudo useradd -m $username -p $password
		#echo "$username:$password" | chpasswd
	fi
done < <(tail -n +2 Shell_Userlist.csv)

