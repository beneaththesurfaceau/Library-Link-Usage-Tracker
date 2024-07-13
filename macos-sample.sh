#!/bin/bash
logFile="$HOME/Documents/link_usage_log.txt"
echo "$(date)" >> "$logFile"
open "http://your-weblink.com"
