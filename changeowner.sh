#!/bin/bash
# CHECK USER
read -p "Enter user: " user
read -p "Enter directory: " myDir
echo '_____________________'
if getent passwd "$user" >/dev/null; then
    echo "The user $user Exists"
#CHECK DESTINATION FOLDER
    if [ -d "$myDir" ]; then
        echo " The $myDir is directry."
        echo "$(ls -l $myDir )"
#CHANGE OWNER
        echo '_______________________'

        chown $user:$user $myDir -R
        echo '_______________________'
        echo "$(ls -l $myDir )"
    else
    echo -e "\e[31m$The $myDir is not found!\e[0m" 
    fi

else
echo -e "\e[31mThe user $user is not found!\e[0m" 
fi
