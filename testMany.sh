#!/bin/bash -
#===============================================================================
#
#          FILE: testMany.sh
#
#         USAGE: ./testMany.sh
#
#   DESCRIPTION: Multiple test conditions
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:31:48 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

#1 if $1  equals YES, print something
#2 if $1  equals NO, print something
#3 if $1  equals MAYBE, print something
#4 Else, print "not supported
if [[ "$1" == "YES" ]]
then
    echo "Answer is YES"

elif [[ "$1" == "NO" ]]
then
    echo "Answer is NO"
elif [[ "$1" == "MAYBE" ]] 
then
    echo "Answer is MAYBE"
else
    echo "not supported"
fi

echo "Done"
exit 0
