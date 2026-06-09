#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Usage ./log_analyzer.sh <log_file>"
	exit 1
fi

LOGFILE=$1

if [ ! -f $LOGFILE ]; then
	echo "Error : File doesn't exist"
	exit 1
fi

echo "Analysing Log file : $LOGFILE"

echo "Counting Errors....."

ERRORS=$(grep -E "ERROR|Failed" "$LOGFILE" | wc -l)

echo "Error Count : $ERRORS"

echo "===== CRITICAL LINES ====="

grep -ni "CRITICAL" "$LOGFILE" | while read line; do
	echo "Line $line"
done

echo ""

echo "Top 5 Error Messages (Most Repeated one's)"

grep -i "ERROR" "$LOGFILE" \
	| awk '{$1=$2=""; print $0}' \
	| sort \
	| uniq -c \
	| sort -rn \
	| head -5
