#!/bin/bash
#
# scriptname: ddi-ext
# purpose: include/header file for "ddi" script.  Adds parsing of apt-cache search results
# creation date: 19 Nov 2015
# (c) James Jones

#set -x


usage(){

  echo "usage:  ddi [-hv]"
  echo "        -h    this help dialog"
  echo "        -v    show version"
  exit 1
}

version(){
  echo ""
  echo "ddi version .9p (prototype)"
  echo "Copyright (C) 2015 James Jones, et al."
  echo "Distributed under the terms of the GNU GPL"
  echo ""
  exit 1
}


main() {
echo -e "\v\ti. Install, n. New, r. Remove, x. Exit: "
  read action
  case $action in
    s)
      apt-cache search $@ | sort | more
      $HOME/bin/ddi $@
      ;;#${args[*]} ;;
    i)
      sudo apt-get install $@
      ;;
    n)
      read newAction
      $HOME/bin/ddi $newAction
      ;;
    r)
      sudo apt-get remove $@
      ;;
    x)
      ;;
  esac
}
