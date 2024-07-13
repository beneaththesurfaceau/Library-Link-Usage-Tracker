#!/bin/bash
logFile="$HOME/Documents/link_usage_log.txt"
echo "$(date)" >> "$logFile"
xdg-open "http://your-weblink.com"
