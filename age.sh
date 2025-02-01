#!/bin/bash
linenum=1
filename=$1
while read line
do
if [ $linenum -gt 1 ]
then
	value=`echo "$line" | awk '{ print $NF}'`
if [ $value -gt 35 ]
then
	name=`echo "$line" | awk '{printf $(NF-1)}'`
	echo "$name"
fi
fi
linenum=`expr $linenum + 1`
done <$filename
