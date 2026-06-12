#!/bin/bash

# Display UID of user
echo "UID: `id -u`";
# Display who is the user
echo "Name: `id -un`";
# check if the user is root or not
if [[ $EUID -ne 0 ]]; 
then
	echo "You are not root";
else
	echo "You are root";
fi
