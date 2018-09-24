#!/bin/bash -
#===============================================================================
#
#          FILE: case.sh
#
#         USAGE: ./case.sh
#
#   DESCRIPTION: Test CASE statements
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:48:41 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo "Enter a value"
read answer

#Case statements use:
#CASE <variable> in
#ESAC
#  TestCond1) ;;
#  TestCond2) ;;
#  TestCond3) ;;
case $answer in 
    one)
        echo "Answer is one"
        ;;

    two)
        echo "Answer is two"
        ;;
    three)
        echo "Answer is three"
        ;;
    #use wildcard for "ELSE" cse
    *) 
        echo "Answer [$answer] is not supported"
        ;;
esac

echo "Done"
exit 0
