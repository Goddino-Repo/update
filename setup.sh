sudo chmod 0777 aggiorna
sudo mv aggiorna /usr/bin/aggiorna
#! /bin/bash

: '
@file        : setup.sh
@author      : Lorenzo Pellegrini <lorenzo.pellegrini@intramind-srl.com>
@version     : 2.0
@since       : 2023-12-31
@description : This script moves the update.sh script into /usr/bin/ folder. If the user is not sudo, it displays an error message and exits the script.
@instruction : Simply run this script as sudo.
'
clear
echo "\nOperazione Completata!"
echo "\nOra puoi avviare lo script digitando il comando:"
echo "aggiorna"
