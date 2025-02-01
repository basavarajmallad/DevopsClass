#!/bin/bash
echo "enter the number to sum of all even numbers"
read n
i=2
while [ $i -lt $n ]
do
#sum=$((sum + i))
sum=`expr $sum + $i`
#i=$((i + 2))
i=`expr $i + 2`
done
echo " sum of  even numbers are $sum "
