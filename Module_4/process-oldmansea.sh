#!/bin/bash

tr -d "[:punct:]" < $1 \
| tr "[:space:]" "\n" \
| tr "[:upper:]" "[:lower:]" \
| grep -v "^$" \
| sort \
| uniq -c \
| sort -gr \
| head -10
