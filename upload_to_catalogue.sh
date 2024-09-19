#!/bin/bash

directory="$(pwd)/files_for_catalogue"
echo $directory

for file in "$directory"/*; do
  if [ -f "$file" ]; then
	echo "$file"
	value=$(<$file)
	echo "$value"
  fi
done