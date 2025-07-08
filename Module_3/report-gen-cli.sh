#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: ${0} <file>"
	exit 1
fi

INPUT="${1}"

if [[ ! -f "${INPUT}" ]]; then
	echo "File not found: ${INPUT}"
	exit 1
fi

TOTAL=0
COUNT=0
MAX=-9999999999
MIN=9999999999

echo "-----------------------------------"
echo "📊 Report for: $INPUT"
echo "-----------------------------------"
echo -e "Name\tScore"

while read -r NAME SCORE; do
	echo -e "${NAME}\t${SCORE}"
	TOTAL=$((TOTAL+SCORE))
	((COUNT++))
	
	if [[ $SCORE -gt $MAX ]]; then
		MAX=$SCORE
	fi
	
	if [[ $SCORE -lt $MIN ]]; then
		MIN=$SCORE
	fi
done < "${INPUT}"

echo "-----------------------------------"

if [[ $COUNT -eq 0 ]]; then
	echo "No data to report"
	exit 0
fi

AVG=$(echo "scale=2; ${TOTAL}/${COUNT}" | bc)

echo "Total records: $COUNT"
echo "Total score: $TOTAL"
echo "Average score: $AVG"
echo "Highest score: $MAX"
echo "Lowest score: $MIN"
echo "-----------------------------------"
echo "✅ Report complete!"
