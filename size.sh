#!/bin/bash
size=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//g'`
if [ $size -gt 30 ] ; then 
	body=`echo -e "memory  reached 30%, please take appropriate action"`
	echo $body | mail -s "memory reached 30%" "basavarajmallad@outlook.com"
fi
