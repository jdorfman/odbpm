#!/bin/bash

## BPM - Bash Package Manager
## bpm.sh -- .... the core i guess, it just includes alot of stuff :)

## Watchout there are few comments in here ;)

## Global Vars
# Change this to where you have bpm installed
INSTALL_PREFIX="/home/pat/dev/bpm/trunk"
# Set this to 1 if you want debug messages showen, change to 0 if you dont
DEBUG=1
# Leave the rest please
VERSION="0.0.2"
KERNEL=$(uname -sr)
MACHINE=$(uname -m)
PROCESSOR=$(uname -p)
OS=$(uname -o)
HOSTNAME=$(uname -n) # set for the sake of it
PACKAGE=0

# Colours :D
BOLD="\033[1;37m"
RESET="\033[0m"
BOLDRED="\033[1;31m"
BOLDYELLOW="\033[1;33m"

source "${INSTALL_PREFIX}/core/error.sh"
source "${INSTALL_PREFIX}/core/cleanup.sh"
source "${INSTALL_PREFIX}/core/users.sh"
source "${INSTALL_PREFIX}/core/functions.sh"
source "${INSTALL_PREFIX}/core/args.sh"
source "${INSTALL_PREFIX}/core/parse.sh"

echo $INSTALL

if [ $DEBUG = "1" ] ; then
	debug
fi
