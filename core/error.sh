#!/bin/bash

## BPM - Bash Package Manager
## core/error.sh -- Does all the error handling

function error 
{
	echo -e $BOLDRED"\aBPM: ${1:-""Unknown error, now exiting.\nBPM: Please inform the developers of this error.""}"$RESET 1>&2
	exit 1
}
