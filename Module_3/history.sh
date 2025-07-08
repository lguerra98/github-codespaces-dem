#!/bin/bash

HISTORY_FILE="./my_history.txt"
MY_HISTORY=()

if [[ -f $HISTORY_FILE ]]; then
	mapfile -t MY_HISTORY < "${HISTORY_FILE}"
fi

echo "Previous Commands"
printf "%s\n" "${MY_HISTORY[@]}"

echo ""
read -p "Enter a new command: " NEW_COMMAND

MY_HISTORY+=("$NEW_COMMAND")

echo ""

echo "Updated history"

printf "%s\n" "${MY_HISTORY[@]}"

printf "%s\n" "${MY_HISTORY[@]}" > "$HISTORY_FILE"

echo "History saved to ${HISTORY_FILE}"
