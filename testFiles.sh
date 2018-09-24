#!/bin/bash -
#===============================================================================
#
#          FILE: testFiles.sh
#
#         USAGE: ./testFiles.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/17/2018 02:54:33 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error


folder="data"

#test if folder exists
if [[ ! -d $folder ]]
then
    echo "Creating folder "
fi
echo "Moving files to folder"



folder="dups.csv"
#Test if file exist
if [[ ! -e $folder ]]
then
    echo "Creating file"
fi
echo "Processing file"

exit 0
