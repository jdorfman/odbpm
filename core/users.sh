#!/bin/bash

## BPM - Bash Package Manager
## core/users.sh -- Does users checks and the like

# user checks
if [ $(id -u) != "0" ]; then
	error "You must be root to use BPM"
fi

# This will show those leet people ;)
if [ $LOGNAME = r00t ] ; then 
	error "Your extra leet because your username is r00t but sorry, you still cant run BPM!"
fi
