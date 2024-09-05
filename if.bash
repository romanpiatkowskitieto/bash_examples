#!/bin/bash
var=0
if [ "$var" -gt 0 ]
then
  echo "var > 0!"
elif [ "$var" -lt 0 ]
then
  echo "var < 0!"
else
  echo "is var 0?"
fi
