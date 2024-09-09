#!/bin/bash
A=a
B=b

function func {
  local A=c
  B=d
  echo "Inside func \$A is \"$A\" and \$b is \"$B\""
}

echo "Before func \$A is \"$A\" and \$B is \"$B\""
func
echo " After func \$A is \"$A\" and \$B is \"$B\""
