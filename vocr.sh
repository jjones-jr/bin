#!/bin/bash
#
# scriptname: vocr.sh
# purpose: prototype for video ocr engine aimed at video tutorials.
# creation date:(10/13/2015) 11/13/2015
# (c) James Jones
# Package-level Dependencies: ImageMagick, Tesseract, Xclip
# File dependencies:  vocrh.sh
# for debugging purposes
#set -x

source /home/james/github/bin/vocrh.sh

#validate parameters

if [[ $@ != -a ]]\
  && [[ $@ != -b ]]\
  && [[ $@ != -r ]]\
  && [[ $@ != -h ]]\
  && [[ $@ != -v ]];

then
  usage
fi

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

#_start

screenshot
screenshot_to_text
selection_type $@
text_to_clipboard output.txt
log

exit 1
