#!/bin/bash
# This script will check if a specific process/program is running. If not, it will start it.
# Usage: ./script_name.sh process_name
#replace process_name with the name of the process you want to monitor.

PROCESS_NAME=$1

if pgrep -x "$PROCESS_NAME" >/dev/null
then
    echo "$PROCESS_NAME is running"
else
    echo "$PROCESS_NAME stopped"
    # Uncomment below if you want to start the process
    # $PROCESS_NAME &
fi
