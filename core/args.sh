#!/bin/bash

## BPM - Bash Package Manager
## core/args.sh -- Detect command line arguments and the like

VERBOSE=0
ASK=0
ARGS=1 # set args to 0 so we can count the args

if [ "$#" -eq 0 ]
then   # We need at least one command-line argument.
	usage
	exit 1
fi 

while [ ! -z "$1" ]
do
  case "$1" in
    -a | --ask) ASK=1
								ARGS="$((ARGS + 1))"
								;;
    -v | --verbose) VERBOSE=1
										ARGS="$((ARGS + 1))"
										;;
    -h | --help) help
									ARGS="$((ARGS + 1))"
									;;
    -i | --install) PACKAGE=$2
									ARGS="$((ARGS + 1))"
									;;
    --info) info
						ARGS="$((ARGS + 1))"
						;;
     *) break;;
  esac 
  shift
done
