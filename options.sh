#!/bin/bash -
#===============================================================================
#
#          FILE: options.sh
#
#         USAGE: ./options.sh
#
#   DESCRIPTION: Learn how to get options(getopts) feature
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 03:06:47 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error


while getopts ":ibq?" argv
do
    case $argv in
      "i") echo "Function for i"
            ;;
       "b") echo "Function for b"
            ;;
       "q") echo "Function for q"
            ;;
        "?") echo "Function for help"
            ;;
            #if testing for ? use \? or "?"
        *) echo "An unexpected parsing error occured."
    

            exit 2
            ;;
    esac


done
exit 0

