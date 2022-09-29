#!/bin/bash
#fichier avec les logs : /var/log/auth.log : journaux d’authentification
#/var/log/wtmp : historique des connexions / déconnexions

#date_`+%d-%m-%Y-%H-%M`.log donnera "date_29-09-2022-11-52.log"
cd /home/thomas/Documents/La_plateforme/git/shell-exe/Job8

rm number_connection-*

last -f /var/log/wtmp | grep $USER | wc -l > number_connection-`date +%d-%m-%Y-%H:%M`

tar -uvf Backup/log.tar number_connection-*

