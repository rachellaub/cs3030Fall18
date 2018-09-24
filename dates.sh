#!/bin/bash -
#===============================================================================
#
#          FILE: dates.sh
#
#         USAGE: ./dates.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/18/2018 03:59:51 PM
#      REVISION:  ---
#===============================================================================

#set -o nounset                                  # Treat unset variables as an error



    #echo $num
    #make time stamp

    timeStamp=`date +%F`

   # fname="Waldo_$(timeStamp).txt"
    echo "Working on `date +m`"

    echo "Full date `date +%F`"
    

    scp rl81079@icarus.cs.weber.edu:/home/hvalle/submit/cs3030/files/FRED.csv $PWD 
    $PWD
    echo "move file"


exit 0
