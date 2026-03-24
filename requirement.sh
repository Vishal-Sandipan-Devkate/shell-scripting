#!/usr/bin/env bash

if [ $# -eq 0 ] # '$#' - Number of arguments
then 
	echo "Usage: $0 <name>" # '$0' - Script name used in usage message
	exit 1
else 
	echo "arguments are: $@" # '$@' - All arguments
fi

# '$1' and '$2' - first and second arguments

