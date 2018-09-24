#!/bin/bash -
#===============================================================================
#
#          FILE: task4_1.sh
#
#         USAGE: ./task4_1.sh
#
#   DESCRIPTION: Write a script that takes 3 input parameters as follows:
#               -f firstName
#               -l lastName
#               -t teamName
#               Display the option to STDOUT
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/17/2018 02:21:50 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo "Your PWD is"
pwd

mkdir test

while getopts ":f:l:t:" opt
do
    case $opt in
       ":f"":l") echo "Function for firstname, $OPTARG "
            fname=$OPTARG
             ;;
       "l") echo "Function for lastName"
            lname=$OPTARG
             ;;
       "t") echo " Function for teamName"
            tname=$OPTARG
             ;;
        *) echo "An unexpected parsing error occured."
            exit 2
            ;;
    esac
done

#echo "Hi $fname $lname your team is $tname"

exit 0

