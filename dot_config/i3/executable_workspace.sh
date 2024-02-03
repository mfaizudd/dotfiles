#!/bin/sh
curr=$(i3-msg -t get_workspaces | jq '.[] | select(.focused).num')
output=$(($curr+$1))
if [ $output -gt 10 ]; then
    output=10
elif [ $output -lt 1 ]; then
    output=1
fi
i3-msg workspace $output
