#! /bin/bash

#
#
# Author :
#	Babita Bisht
#	babitabisht2018@gmail.com
#	github.com/babitabisht
#
#
# ====================================================
#         Please Don't Remove Author name
# ====================================================
#
#
#	Description:
#		Description About This Script
#

# Name Of Current Script
printf "=========================Welcome in %s=================================\n" $0


function add1()
{
    echo "adding"
    result=$(($1+$2))
    echo "The result is :) $result"

}

function sub(){
    echo "subtracting"
    result=$(($1-$2))
    echo "The result is :) $result"
}

function div(){
    echo "Dividing"
    result=$(($1/$2))
    echo "The result is :) $result"
}

function mult(){
    echo "Multiplying"
    result=$(($1*$2))
    echo "The result is :) $result"
}

INPUT_STRING=true
while [ "$INPUT_STRING" != false  ]
do
echo "add subtract divide multiply"
read -p "Enter your choice :)" CHOICE

case "$CHOICE" in
    add)
    read -p "Enter two numbers" num1 num2
    echo "$num1" "$num2"
    add1 "$num1" "$num2"
    ;;
    subtract)
    read -p "Enter two numbers" num1 num2
    echo "$num1" "$num2"
    sub "$num1" "$num2"
    ;;
    divide)
    read -p "Enter two numbers" num1 num2
     echo "$num1" "$num2"
    div "$num1" "$num2"
    ;;
    multiply)
    read -p "Enter two numbers" num1 num2
     echo "$num1" "$num2"
    mult "$num1" "$num2"
    ;;
    *)
    echo "incorrect option"
    ;;
esac

read -p "do you still want to continue?  Y/N :)"   ch

if [ "$ch" == "Y" ]
then
INPUT_STRING=true
elif [ "$ch" == "N" ]
then
INPUT_STRING=false
else
echo "Wrong Input either type Y or N"
fi

done
