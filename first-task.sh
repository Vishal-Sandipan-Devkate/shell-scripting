#!/usr/bin/env bash

read -p "Enter your age:" age
echo "Hello $1, you are $age years old"

if [ "$age" -ge 18 ]
then
	echo "You are Adult"
	exit 1
else
	echo "You are Minor"
fi

