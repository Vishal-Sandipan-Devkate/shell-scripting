#!/usr/bin/env bash

if [ $# -eq 0 ] 
then
	echo "Usage: ./script.sh <name>"
	exit 1
fi
echo "Deploying app for user : $1"

