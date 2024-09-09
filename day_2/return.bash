#!/bin/bash

function func {
  return 127
}

func
echo $?
