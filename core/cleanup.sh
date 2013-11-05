#!/bin/bash

## BPM - Bash Package Manager
## core/cleanup.sh -- Cleans everything up if we get given a SIGHUP, SIGINT or SIGTERM signal.

function kill
	echo -e $BOLDRED"Received exit signal, cleaning up ...."$RESET
	cleanup
	error $BOLDRED"Finished cleaning up, now exiting ...."$RESET
function cleanup
{
	
}

trap kill SIGHUP SIGINT SIGTERM
