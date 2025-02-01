#!/bin/bash
echo "To print  the  numbers in  revrse  order"
num=$1
 
while [ $num -gt 0 ]
do 
	echo -n " $num "
      num=`expr $num - 1`
done
