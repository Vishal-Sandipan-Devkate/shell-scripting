#!/usr/bin/env bash

# Author: Vishal Devkate
# Discr: Simple Deployment script

source ./config.env
source ./scripts/utils.sh

ENV=$1

if [ -z "$ENV" ]; then
  error_exit "Environment not provided (dev/prod/test)"
fi

case $ENV in
  prod)
    log "Deploying to PRODUCTION"
    echo "Deploying to Production..."
    ;;
  dev)
    log "Deploying to DEVELOPMENT"
    echo "Deploying to Dev..."
    ;;
  test)
    log "Running TEST deployment"
    echo "Running Tests..."
    ;;
  *)
    error_exit "Invalid environment"
    ;;
esac
