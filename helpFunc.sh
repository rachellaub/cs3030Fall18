#!/bin/bash -
#===============================================================================
#
#          FILE: helpFunc.sh
#
#         USAGE: ./helpFunc.sh
#
#   DESCRIPTION: Use functions
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:58:56 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

helpFunction()
{
    echo "Usage $0 <param1>"
    #Here $1 is the input parameter to the function
    #Not the $1 from the program
    echo "Usage $0 <$1>"
}

main() {
#This is my help function
echo "This is my HELP function"
if [[ $1 == "--help" ]]
then 
    #call function
    #ALL functions must be declared before you use them
    helpFunction "HEY"
fi
}

#start your program
input="$1"
echo "$input"
main input



#Catch system calls and capture output to variable to use single backticks
OS=`uname`
echo "You are running in $OS"

#if linux etc

echo "Done"
exit 0













