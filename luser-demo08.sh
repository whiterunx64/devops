#!/bin/bash

# This script shows how I/O works in linux

# Redirect STDUOT to a file.
#
FILE="/tmp/data";
head -n1 /etc/passwd > ${FILE}

# Redirect STDIN to a porgram. 
#
read LINE < ${FILE};
echo -e "\n${LINE}";
