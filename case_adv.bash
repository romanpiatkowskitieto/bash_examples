#!/bin/bash
var=0

case 1 in
  $(($var>0)))
    echo "var > 0!"
    ;;
  $(($var<0))
    echo "var < 0!"
  $(($var==0))
    echo "is var 0?"
    ;;
esac