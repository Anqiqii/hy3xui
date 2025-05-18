#!/bin/bash
# This script will truncate the .log files in the current directory to keep only the last 7000 lines.

for file in *.log; do
  echo "Processing $file ..."
  tail -n 7000 "$file" > "$file.tmp" # create a temporary file with the last 7000 lines
  mv "$file.tmp" "$file" # overwrite the original file with the temporary file
done
docker exec nginx nginx -s reload

echo "Done."