#!/bin/bash
echo -e "1) check name \n2) create link \n3) search word \n4) edit file \n5) find file \n6) exit"
echo "enter the choice"
read choice

case $choice in
'1')
        echo "enter the name"
        read name
        if [ -f $name ]; then echo "$name is a file"
        elif [ -d $name ]; then echo "$name is a directory"
        elif [ -L $name ]; then echo "$name is a link"
        fi
        ;;
'2')
        echo "enter the file"
        read file
        if [ ! -f $file ]; then echo "file doesn't exist"
        exit 1
        fi

        echo "enter link"
        read link
        if [ -L $link ]; then echo "$link already exists"
        exit 1
        fi
        ln -s $file $link
        ;;
'3')
        echo "enter the word to serach"
        read word
        grep -l "$word" * > wordlist
        if [ $? -eq 0 ]; then echo "$word found in below files"
        cat wordlist
        else
                echo "$word not found"
        fi
        ;;
'4')
        echo "enter file to edit"
        read file
        if [ -f $file ]; then
        vi $file
        else echo "$file doesn't exist"
        fi
        ;;
'5')
        echo "enter the file to find the location"
        read file
        loc=`find . -type f -iname $file`
       if [ -z $loc ]; then
        echo "file not found"
        else
                echo "file found in $loc"
       fi
	#if [ $? -eq 0 ]; then 
        #       echo "$file found in the below location"
        #       cat loc
        #else echo "$file doesn't exist"
        #fi
        ;;
'6')
        exit 0
        ;;
*)
        echo "enter the valid choice"
        ;;
esac
