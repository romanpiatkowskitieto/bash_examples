#!/bin/bash

func () {
  echo "Func's first argument: $1"
}

func "other argument"
echo "Script's first argument: $1"
