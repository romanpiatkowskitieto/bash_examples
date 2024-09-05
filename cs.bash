#!/bin/bash
latest_10_text_files=$(ls -t text_files/*.text | head -10)

for file in $latest_10_text_files; do
  if [ $(cat $file | wc -l) -gt 10 ]; then
    echo "File $file has more than 10 lines. Skipping"
    continue
  fi
  echo "Content of a $file file:"
  cat -n $file

done

