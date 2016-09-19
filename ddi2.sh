#!/bin/bash
#
# scriptname: ddi-ext2
# purpose:  tired of typing "apt-get / apt-cache install / search".
# creation date: 2015
# (c) James Jones

source $HOME/github/bin/ddi-ext2.sh

#Display Help or Version information.

case $@ in
  -h )
    usage
    ;;
  -v )
      version
    ;;
    "" )
    exit 1
    ;;
 esac

#program start

main $@
