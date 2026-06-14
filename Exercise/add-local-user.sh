#!/bin/bash 

# Check if the script is not executed with superuser privileges
if [[ $EUID -ne 0 ]]
then
  echo "Run with sudo.";
  exit 1;
fi

# Get the username of this account

get_username() {
  read -p "Enter your username for this account: " USERNAME;

}

# Get the initial password for this account
get_password() {
  echo "Enter your initial password for this account: "; 
  read -s PASSWORD;
}

# Get the real name of this account

get_metadata() {
  read -p "Enter your real name for this account: " METADATA;
}

# Create a linux user with the input provided by the user
create_user() {
  get_username;
  get_password;
  get_metadata;

  useradd -MN -c "${METADATA}" "${USERNAME}";
  echo ${PASSWORD} | passwd --stdin "${USERNAME}";
  passwd -e ${USERNAME}; # Force to change password next logon

  # Inform the user if the account was not able to be created for some reason.
  if [[ "$?" -ne 0 ]]
  then
    echo "Problem occurred in user creation"; 
    exit 1;
  else
    echo "Username: ${USERNAME}";
    echo "Initial Password: ${PASSWORD}";
    echo "Computer Host: $(hostname)"; 
  fi
}


# Function caller
create_user;
