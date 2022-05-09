#!/bin/bash

# CATC Assignment Q2.4

#Author Aron Nutley

_ANSWER=""
_COUNT=0 #variable to store no answers


while [ ${_COUNT} -lt 10 ] ; do #while loop opened

	read -p "Would you like a cup of tea?" _ANSWER 
	 
	if [ "${_ANSWER}" == "y" ]; then
		echo "Great, I'll make tea now."
		break #User only needs to say 'y' once and script will terminate

	elif [ "${_COUNT}" == 4 ]; then
		echo "Don't say I didn't ask!"
		break #User will be asked a total of 5 times before script terminates with above statement

	elif [ "${_ANSWER}" == "n" ]; then
		echo "Go on have a cup!"
		_COUNT=$((${_COUNT} +1))

	else
		echo "It's a 'y' or 'n' question." #echo statement to pick up errors

	fi	


done
