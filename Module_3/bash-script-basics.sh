#!/bin/bash
#
# This is where comments go
# It can be useful to explain the purpose of your code
## Note you can also start your script with #!/usr/bin/bash -xv for verbose debugging 
## https://tidp.org/LDP/Bash-Begginers-Guide/html/sect_02_03.html

# Set strict mode. Causes shell to exit when a command fails
set -e

# Enables printing of shell input lines as they are read
set -v

# Enables printing of command traces before executing command
set -x

# Set variable 
variable="one"
echo "This is a script with a variable: ${variable}"
