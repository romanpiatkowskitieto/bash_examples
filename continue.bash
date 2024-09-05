#!/bin/bash
for number in {10..20}; do
  if [ $number -eq 13 ]; then
    continue # let's skip unlucky number
  fi
  echo -n "$number, "
done
echo