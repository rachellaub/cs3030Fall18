#!/bin/bash -
#===============================================================================
#
#          FILE: bkFiles.sh
#
#         USAGE: ./bkFiles.sh
#
#   DESCRIPTION: Backup Files
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: --
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 01:52:57 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
# get al files with .txt ext.
tot=`wc -l *.txt*`
for file in `ls *.txt*`
do 
        bk=`ls $file | cut -d '.' -f 3`
        echo $bk
        #IF names have .bk do not rename
        if [[ $bk == "bk" ]]
        then 
             echo "Moving $file data/${file}"
             mv $file data/${file}
        else
            #rename them
            echo "Moving $file to data/${file}.bk"
            mv $file data/${file}.bk
        fi


done 

echo "$tot filesmoved to data folder"
exit 0
