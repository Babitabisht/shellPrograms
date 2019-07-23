#! /bin/bash

echo hello world !

Name="Babita"

echo "My name is $Name"

echo "My name is ${Name}"

#      User Input options
###  read -p “ prompt_text” 
# Here we read the data along with some hint text . The #hint text helps the user in what he/she has to enter . -p here stands for the #prompt . The hint text also called the prompt text.
### read variable 
# The variable is the place holder for the text you enter. The whole unit of text is stored in variable that you provide.
###      read -n 
# This -n option allows the user to enter only the specific length of characters.It won’t allow you to enter more than the given number of characters. After reaching the gicen threshold length, it automatically stops reading. You again no need to press the Enter key.
### read -s  
# This option -s means secret or secure whatever is used to read the #sensitive data. Generally, when you type entering the data it appears in the #terminal. But with this option the text won’t appear in terminal . But the #characters are read. We can use all the options specified above.
#This is manly used to read the passwords from the keyboard.

#
#
#
##USER INPUT
read -p "Enter your name " YOURNAME
echo "hello ${YOURNAME}"

if [ "$NAME" == "Babita" ]
then
echo "Your name is Babita" 
fi

if [ "$YOURNAME" == "Babita" ]
then
echo "Your name is Babita" 
else
echo "Your name is  $YOURNAME"
fi

if [ "$NAME" == "aBC" ]
then
       echo "Your name is aBc"
elif [ "$NAME" == "cde" ]
then 
       echo "Your name is cde"
else
        echo "Your name is neither abc nor cde"
fi


# comparison

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

NUM1=100
NUM2=2000

if [ "$NUM1" -gt "$NUM2" ]
then  
echo "$NUM1 is greater than $NUM2"
else 
echo "$NUM2 is greater than $NUM1"
fi

#File conditions

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

FILE="test.txt"
if [ -f "$FILE" ]
then 
echo "$FILE  is a file"
else
echo "$FILE is not a file"
fi

if [ -e "$FILE" ]
then 
echo "$FILE  exists"
else
echo "$FILE  does not exist"
fi

if [ -d "$FILE" ]
then 
echo "$FILE i a directory "
else
echo "$FILE is not a directory"
fi


if [ -r "$FILE" ]
then 
echo "$FILE is readable"
else
echo "$FILE is not readable"
fi


if [ -w "$FILE" ]
then 
echo "$FILE is writable"
else
echo "$FILE is not writable"
fi

FILE2="myScripts.sh"

if [ -x "$FILE2" ]
then 
echo "$FILE2 is executable"
else
echo "$FILE2 is not executable"
fi


# case statement
read -p "Do you know shell scripting"  ANS
case "$ANS" in
       [yY]|[yY][eE][sS])
       echo "Great ! :)"
       ;;
       [nN]|[nN][oO])
       echo "you should learn shell scripting :)"
       ;;
       *)
       echo "please enter yes or no ! :)"
       ;;
esac       


#Looping 
NAMES="Babita Ritik Mansi"

for Name in $NAMES
       do 
              echo "Hello $Name"
       done


## Making random files 
echo "Making random files for FOR loop operation"
touch {1,2}{3,4}.txt

FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
do 
       echo "Renaming $FILE to new-$FILE" 
      
       mv $FILE $NEW-$FILE 
done

echo "reading characters line by line"
# reading characters line by line 
LINE=1
while read -r CURRENT_LINE
       do
              echo "$LINE: $CURRENT_LINE"
              ((LINE++))
done  <  "./test.txt"


#Function without params
function sayHello()
{
       echo "Hello World !"
}

sayHello

#Function with params
function sayHii(){
       echo "Hii ! ..... $1 this side, from $2"
}

sayHii "Babita" "Delhi-India"


read -p "Enter the folder name you want to make" FOLDER
mkdir $FOLDER
read -p "Enter the file you want to make" FILE_IN_FOLDER
touch $FOLDER/$FILE_IN_FOLDER
echo "Enter something to write inside the file"
cat >> $FOLDER/$FILE_IN_FOLDER.txt

