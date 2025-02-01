#!/bin/bash
services="sshd jenkins"
for ser in $services 
do
	echo "$ser"
	ps -C "$ser"
	echo $?
	if [ $? == 0 ]
       	then
		echo $ser | mail -s "service is stoped" "basavarajmallad@outlook.com"
	fi
done
