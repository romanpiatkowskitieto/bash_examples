#!/bin/bash

# Return any value using global variable
function func {
  func_result="Some result"
}

func
echo $func_result
