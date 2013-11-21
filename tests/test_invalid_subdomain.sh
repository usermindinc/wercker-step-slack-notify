#!/bin/bash

source tests/helper.sh
set -e

export WERCKER_SLACK_NOTIFY_SUBDOMAIN="werckerz"
export WERCKER_SLACK_NOTIFY_TOKEN=$1
export WERCKER_SLACK_NOTIFY_CHANNEL="product"
export WERCKER_STEP_TEMP=/tmp
export FATAL_MESSAGE="Subdomain or token not found."
export FATAL_CALLED=0
source run.sh

if [ $FATAL_CALLED -eq 0 ]; then
    exit 1
fi
