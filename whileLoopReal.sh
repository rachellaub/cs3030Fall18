#!/bin/bash -
#===============================================================================
#
#          FILE: whileLoopReal.sh
#
#         USAGE: ./whileLoopReal.sh
#
#   DESCRIPTION: The real while loops
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 02:24:45 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error


filename=$1

if [[ ! -r $file ]]
then
    echo "Error: cannot read $filename"
fi

echo "File has the following info: "
#use the read command to read from file
#you can use the list of files at the bottom
#of your while loop as INPUT to the loop
while read myline
do 
    echo "$myline"
done < $filename




exit 0
