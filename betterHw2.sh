#!/bin/bash -
set -o nounset                                  # Treat unset variables as an error

#Task parse the fredInfo.csv which should
#be taken as an input to the script
#populate the custmer information

while IFS=:read user server serverFolder have_f have_c
do
    echo "User: $user"
    echo "Server: $server"
    echo "serverFolder: $serverFolder"

done < fredInfo.csv

# Set all your variables here
# Server Information
#user="rl81079"
#server="icarus.cs.weber.edu"
#serverFolder="/home/hvalle/submit/cs3030/files"

# Global variables
#have_f=0
#have_c=0

# 
# FROM THIS POINT ON, NO HARD CODED VALUES
#

# Usage function
UsageFunction()
{
    echo "Usage: $0 [-c customerDataFolder] [-f dataFile]"
    echo "Both arguments are required"
    # Always exit your help function with a non-zero number
    exit 1    
}

echo "part I"
# Check to see if help was called
if [[ $1 == "--help" ]]
then
    UsageFunction
fi


echo "part II"
# If you make it here, you have at least the correct
# number of params, now you need to verify they are 
# the correct ones. 
# Set getopts
while getopts ":f:c:" opt
do
    case $opt in
        f)
            custFile=$OPTARG
            have_f=1
            # echo "f option"
            ;;
        c)
            custFolder=$OPTARG
            have_c=1
            # echo "c option"
            ;;
        ?)
            UsageFunction
            ;;
        *)
            echo "Unsupported option"
            UsageFunction
            ;;
    esac

done

echo "part III"
# Check for correct Number of arguments
if [[ $have_f -eq 1 && $have_c -eq 1 ]]
then
    echo "Have required information"
else
    UsageFunction
fi

#Make sure both getopts are used
if [[ ! "$custFile" || ! "$custFolder" ]]
then
    UsageFunction
fi

# Check for proper folder structure 
# If it doesn't exist, create it
# Check for month folder in fredData
echo "Checking for data structure"
curMonth=`date +%m`
custDirectory="$custFolder/$curMonth"

if [[ ! -d $custDirectory ]]
then
    echo "Customer folder $custDirectory is missing"
    echo "Creating folder"
    # Create customer folder and subfolder with -p option
    `mkdir -p $custDirectory`
fi

# Retreive file and put it in proper folder via SCP 
# This requires ssh keys to be set between servers
# Filename should be appended with timestamp (YYYY-MM-DD)
timestamp=`date +%Y-%m-%d`

`scp $user@$server:$serverFolder/$custFile $HOME/$custDirectory/${custFile}.$timestamp`
echo "File transfer complete"

echo "File located at $HOME/$custDirectory/${custFile}.$timestamp"

exit 0
