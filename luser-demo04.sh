#!/bin/bash
# This script creates an account on the local system.
# You will be prompted for the account name and password.

# Ask for the user name.
get_username() {
  read -p 'Enter the username to create: ' username;

}

# Ask for the password.
get_password() {
  echo "Enter the password to use for the account: ";
  read -s password;
}

# Ask for the Real name.
get_comment() {
  read -p 'Enter the nane of the person who this account is for: ' comment;
}

# Create the user.
create_user(){
  get_username;
  get_password;
  get_comment;

  sudo useradd -MN -c "${comment}" "${username}";
  # Set the password for the user 
  echo ${password} | sudo passwd --stdin "${username}";
  sudo passwd -e ${username};
}

# Function call
create_user;

