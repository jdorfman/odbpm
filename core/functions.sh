#!/bin/bash

## BPM - Bash Package Manager
## core/functions.sh -- This is a big ass list of functions

function debug
{
	echo -e ">>> Debug Start"
	echo -e ""
	echo -e " * ARGS = ${ARGS}"
	echo -e " * ASK = ${ASK}"
	echo -e " * VERBOSE = ${VERBOSE}"
	echo -e " * PACKAGE = ${PACKAGE}"	
	echo -e ""
	echo -e ">>> Debug End"
}

function usage
{
	echo -e "Usage:"
	echo -e "   bpm [ options ] package"
	echo -e "   bpm < --update | --info >"
	echo -e ""
	echo -e "Options: -[avh]"
	echo -e ""
	echo -e "   For more detailed help run \"bpm --help\" or read the man page."
	echo -e ""
}

function help 
{
	echo -e $BOLD"Usage:"$RESET
	echo -e "   bpm [ options ] package"
	echo -e "   bpm < --update | --info >"
	echo -e ""
	echo -e $BOLD"Options:"$RESET" -[avh]"
	echo -e ""
	echo -e ""
	echo -e $BOLD"Help:"$RESET"(this message)"
	echo -e "   "$BOLDYELLOW"--help"$RESET" (-h short arg)"
	echo -e "          Shows a detailed help screen on how to use Bash Package Manager."
	echo -e ""
	echo -e $BOLD"Options:"$RESET
	echo -e "   "$BOLDYELLOW"--ask"$RESET" (-a short arg)"
	echo -e "      Asks for user confirmation before starting starting a"
	echo -e "      set of installs/removes/updates. This setting does not ask you for"
	echo -e "      confirmation with package just at the start."
	echo -e ""
	echo -e "   "$BOLDYELLOW"--verbose"$RESET" (-v short arg)"
	echo -e "      Turns on a more verbose output when running Bash Package Manager."
	echo -e ""
	echo -e "   "$BOLDYELLOW"--info"$RESET
	echo -e "      Provides info on the system and info about your Bash Package Manager setup."
	echo -e "      This info is usefull for bugreports and verification of settings. When run"
	echo -e "      with the --verbose flag the default settings also show."
	echo -e ""
	exit 1
}

function info
{
	echo -e ">>> System Info Provided by Bash Package Manager"
	echo -e ""
	echo -e "    OS: ${OS}"
	echo -e "    Kernel: ${KERNEL} ${MACHINE}"
	echo -e "    Processor: ${PROCESSOR}"
	exit 1
}
