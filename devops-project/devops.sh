#!/usr/bin/env bash

# Author: Vishal Devkate
# Discription: Main Control of project

source ./config.env

COMMAND=$1

case $COMMAND in
  deploy)
    ./scripts/deploy.sh $2
    ;;
  monitor)
    ./scripts/monitor.sh
    ;;
  backup)
    ./scripts/backup.sh
    ;;
  *)
    echo "Usage:"
    echo "./devops.sh deploy <env>"
    echo "./devops.sh monitor"
    echo "./devops.sh backup"
    ;;
esac
