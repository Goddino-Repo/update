#! /bin/bash

: '
@file        : setup.sh
@author      : Lorenzo Pellegrini <lorenzo.pellegrini@intramind-srl.com>
@version     : 2.0
@since       : 2023-12-31
@description : This script moves the update.sh script into /usr/bin/ folder. If the user is not sudo, it displays an error message and exits the script.
@instruction : Simply run this script as sudo.
'

# Check if the user has sudo rights
if [[ $EUID -ne 0 ]]; then
  echo "You do not have correct rights. Please run this script using sudo."
  exit 1
fi

# Give permissions to the main script
sudo chmod 0777 update.sh
# Move the script into /usr/bin/ folder
sudo mv update.sh /usr/bin/update

# Clear the screen
clear

# Output success message
printf "Operation complete!"
printf "\nNow you can execute the script by using:\n"
printf "update\n"