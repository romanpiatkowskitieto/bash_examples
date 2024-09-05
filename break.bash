#!/bin/bash
while :; do
  echo -n "Type exit to exit this loop: "
  read answer
  if [ "$answer" == "exit" ]; then
    break
  fi
done
