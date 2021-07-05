#!/bin/bash
# CHECK USER
user=test1
if grep $user /etc/passwd 
then
echo "The user $user Exists"
else
echo "The user $user is not found"
fi

echo '----------------------'
#CHECK DESTINATION FOLDER


myDir=/home/dkin/dir_test
if [ -d "$myDir" ]   
then
echo " The $myDir is directry."

#CHANGE OWNER
echo '_______________________'

sudo chown $user:$user $myDir -R
echo '_______________________'
echo "$(ls -l $myDir )"

else
echo "The $myDir is not found!"
fi