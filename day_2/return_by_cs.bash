#!/bin/bash

# Return any value using command subtitution
function func {
  local result="some result"
  echo $result
}

func_result="$(func)"
echo $func_result
