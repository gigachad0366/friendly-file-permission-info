#!/bin/bash

if [ -e "$1"  ]
then
	echo "
	Info about $1:
	
	" 

	if [ -s $1 ]
	then
		echo "Is file empty ?            no
		"
	else
		echo "Is file empty ?            yes
		"
	fi
	
	if [ -O $1 ]
	then
		echo "Is owned by $USER ?         yes
		"
	else
		echo "Is owned by $USER ?         no
		"
	fi

	if [ -L $1 ]
	then
		echo "Is a link ?                yes
		"
	else
		echo "Is a link ?                no
		"
	fi

	if [ -r $1 ]
        then
                echo "Is the file readable ?     yes
		"
        else
                echo "Is the file readable ?     no
		"
        fi

	if [ -w $1 ]
        then
                echo "Is the file writable ?     yes
		"
        else
                echo "Is the file writable ?     no
		"
        fi

	if [ -x $1 ]
        then
                echo "Is the file executable ?   yes
		"
        else
                echo "Is the file executable ?   no
		"
        fi


elif [ -d "$1" ]
then
	echo "$1 is a directory"
else
	echo "The file does not exist"
fi
