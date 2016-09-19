#!/bin/bash
#
#
#
#

set -x
trap '' 2

while true
do
  clear

  echo -e "\v"
  echo -e "\v"
  echo -e "\v"
  echo -e "\t\t\t 1. .bak and ln files"
  echo -e "\t\t\t 2. .bak only
  echo -e "\t\t\t 3.  link only
  echo -e "\n"
read selection
case "$selection" in
  1) echo -e "\t\t\tTarget Directory:>> "
    read target_dir
    for f in $PWD; do mv $target_dir/$f $target_dir/$f.old; done
    for f in $PWD; do ln -s $PWD/$f $target_dir/$f; done
    ;;
  2) echo -e "\t\t\tTarget Directory:>> "
    read target_dir
    for f in $PWD; do mv $target_dir/$f $target_dir/$f.old; done
    ;;
  3) echo -e "\t\t\tTarget Directory:>> "
    read target_dir
    for f in $PWD; do ln -s $PWD/$f $target_dir/$f; done
    ;;
  esac
done

