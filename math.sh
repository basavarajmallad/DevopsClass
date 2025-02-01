#!/bin/bash
echo "shell script of arithmetic operator"
echo " enter values of 1st number"
read num1
echo " enter vales of second number"
read num2 
add=`expr $num1 + $num2`
sub=`expr $num1 - $num2`
multi=`expr $num1 \* $num2`
div=`expr $num1 \/ $num2`
echo -e  " addition of $num1 and $num2  is $add \n Subtraction of $num1 and $num2 is $sub \n multiplication of  two numbers is $multi \n divison of two number is $div"
echo -e "\n--------\n"
echo -e "command line  arugument pass \n"
addtion=`expr $1 + $2`
substraction=`expr $1 - $2`
multiplication=`expr $1 \* $2`
divsion=`expr $1 \/ $2`
echo -e "answers of command line  addition is = $addtion \n  substration is =$substraction \n multiplication is =$multiplication \n division is =$divsion"

