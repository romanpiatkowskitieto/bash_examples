#!/bin/bash
touch temp
echo -n "File temp will be deleted. Are you sure? Type y or n: "
read answer
case $answer in
  "y")
    rm -fv temp
    ;;
  "n")
    echo "Ok, I'm skipping the deletion."
    ;;
  *)
    echo "Unknown answer, I'm skipping the deletion"
    ;;
esac


