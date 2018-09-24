#!/bin/bash -
#===============================================================================
#
#          FILE: rachel_laub_hw1.sh
#
#         USAGE: ./rachel_laub_hw1.sh
#
#   DESCRIPTION: Homework #1
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rachel Laub (rlaub), rachellaub@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 08:40:08 PM
#      REVISION:  ---
#===============================================================================

#set -o nounset                                  # Treat unset variables as an error

#functions

option1()
{
    #check for root user
    case $UID in
        0)
            echo "You are the root user!"
            ;;
        *)
            echo "You are not the root user!"
            ;;
    esac
}
option2()
{
    OS=`uname`
    if [[ $OS == "Linux" ]]
    then 
        echo "The script is running on Linux"
    else
        echo "The script is not running on Linux"
        echo "It is running on $OS"
    fi
}
printParam()
{
    if [[ -z $1 ]]
    then
       echo "'-w' argument given."
       echo "No second parameter, try again"
    else
        echo "Entered two parameters"
        echo "$1 $1 $1"
    fi
}
option3() 
{
    #check for first argument
    if [[ "$1" == "-w" ]]
    then 
        printParam "$2"
    else
        echo "No parameters, try again"
    fi
}
helpFunc()
{
    echo "Usage $0"
    echo " --help Print this help message"
    echo " -w print name three times"
    echo "With no arguments it provides a menu to test the system"

}



#1
echo "Hello, welcome to homework #1"
echo "This machines name is $HOSTNAME"

#2 user menu
echo "Hi $USER"
    #use an if statement for the options to call functions

#3 help option
if [[ $1 == "--help" ]]
then 
    helpFunc
    exit 0
fi


#display options

echo "The script can do three things"
echo "1. Check to see if the user is the root user"
echo "2. Check to see if the script is running on Linux OS"
echo "3. Check to see if the -w argument was given"
echo "What would you like to do? (1,2,3)"
read optionNum

input1="$1"
input2="$2"

if [[ $optionNum == 1 ]]
then
    option1
    echo""
elif [[ $optionNum == 2  ]]
then
    option2
    echo""
elif [[ $optionNum == 3  ]]
then
    option3 "$input1" "$input2"
    echo""
else
    #wrong number
    echo "incorrect number"
    echo""
fi



echo "Exiting program now"

exit 0





