#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: build.sh <input-mrt-json-file>"
  exit
fi

if [ -e "$1" ]; then
  python stijson2tcpdf.py "$1" > "${1::-4}.php" && php "${1::-4}.php" > "${1::-4}.pdf"
else
  echo "Error: Can not find '$1' file."
fi
