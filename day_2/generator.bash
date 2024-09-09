#!/bin/bash

dir=$(pwd)"/training"
alphabet=("a" "b" "c" "d" "e" "f" "g")

function check()
{
    if [ -d $dir ] ; then
        echo -e "\033[31m\nPlease remove direcotry $dir, you need it to start training,\nuse: rm -rf $dir or $0 clean\033[0m\n"    
    exit 1
    else
        echo -e "\e[92m\nDirectory structure looks good...\n\033[0m"
    fi    
}

function usage()
{
    echo -e "\033[33m \n\n\t\t  ¯\\_(ツ)_/¯\n"
    echo -e "Usage: $0 (check | generate | clean) \n\n\033[0m"
    exit 0
}

function generate()
{
    check
    echo -e "\e[92m\nCreating files in $dir...\033[0m\n"
    for i in {1..10}; do
        mkdir -p "$dir/$i/"
        for j in "${alphabet[@]}"; do
            touch $dir/$i/$j$j$j$i$i
            touch $dir/$i/$j$i$j$j
            touch $dir/$i/$i$j$j
            touch $dir/$i/$j$i$i
        done
    done
}

function clean()
{
  rm -rf $dir
  if [ ! -d $dir ] ; then
    echo -e "\e[92m\nCleaned.\n\033[0m"
  else
    echo -e "\033[31m\nSomething went wrong, check it manually\n\033[0m"
  fi
}
 
####### MAIN #######

case $1 in
  "generate")
    generate
    ;;
  "check")
    check
    ;;
  "clean")
    clean
    ;;
  *)
    usage
esac
