#!/bin/bash
echo "enter first number"
#read num1
num1=$1
echo "enter second  number"
#read num2
num2=$2
echo "enter  third number"
#read num3
num3=$3
echo "--------"
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
   then
        echo " $num1  is greatest among three numbers "
elif [ $num2 -gt $num3 ]
    then
        echo " $num2 is greatest among three numbers "
else
        echo "$num3  is greatest  among three numbers"
fi

echo -e "\n----------------\n"
echo "passing the  vaules in  command line argument"

if [ $1 -gt $2 ] && [ $1 -gt $3 ]
   then
        echo " $1  is greatest among three numbers in commandline argument "
elif [ $2 -gt $3 ]
then
        echo "$2  is greatest  among three numbersin commandline argument"
else 
        echo "$3  is greatest  among three numbersin commandline argument"
fi

echo -e "\n--- revrese string ---\n"
var=$4
rav=$(echo $var | rev)
echo -e " the string is  $var \n"
echo "revrse string is $rav"

