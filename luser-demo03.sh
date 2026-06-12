#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the dave user or not.

# Display the UID.
echo "Your UID is ${UID}";
# Only display if the UID does NOT match 1000.
_UID='1002';
if [[ "$UID" -ne "$_UID" ]]
then
  echo "Your UID does not match ${_UID}";
  exit 1;
fi

# Display the username.
_USERNAME=`id -un`;
# Test if the command succeeded.
if [[ "${?}" -ne 0 ]]
then
  echo "The id command did not execute successfully";
  exit 1;
fi
 
# You can use a string test conditional.

# Test for not equal for the string.
