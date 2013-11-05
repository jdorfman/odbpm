#!/bin/bash

## BPM - Bash Package Manager
## core/parse.sh -- Parses the packages.txt file and works out what package version you want

if [ $PACKAGE != "0" ] ; then

	# the user wants to install a package so lets get cranking
	PACKAGE_INSTALL=$(awk -F: '{print $1}' packagelist.txt | grep ${PACKAGE})

	if [ "$PACKAGE_INSTALL" = "$PACKAGE" ] ; then

		# The package was found in our database :D
		echo "The package $INSTALL was found in the database"

	else

		echo "Sorry, no such package $INSTALL"
		

	fi	

fi
