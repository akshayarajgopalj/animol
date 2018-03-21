#!/bin/sh
if [ $# -ne 2 ]
then
	echo NO. OF ARGUMENTS INCORRECT!!!!
fi

if [ -f "$1" ]
then 
	echo THE FILE $1 EXISTS.
else
	echo "THE FILE" $1 "DOESN'T EXISTS!!!!"
fi
if [ -f "$1" ]
then 
	flag=$(grep "$2" "$1" )
	if [ "$flag" = "$2" ]
	then
		echo USERNAME $2 ALREADY EXISTS!!!!
	else
		echo $2 >> $1
		echo NEW USERNAME $2 ADDED TO $1.

	fi
fi
