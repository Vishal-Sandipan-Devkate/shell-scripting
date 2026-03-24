#!/usr/bin/env bash

if [ $# -ne 2 ]
then
	echo "Usage: $0 <name> <environment>"
	exit 1
fi

name=$1
env=$2

echo "Deploying $name to $env environment"
if [ "$env" = "prod" ] 
then
	echo "Production Deployment"

elif [ "$env" = "dev" ] || [ "$env" = "test" ]
then
	echo "Safe deployment"

else
	echo "Invalid environment"
	exit 1 # exit when error occurs
fi

# exit 0 - when normal flow of execution
