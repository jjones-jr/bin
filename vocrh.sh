#!/bin/bash
#
# scriptname: vocrh.sh
# purpose: 1st branch of early prototype for video ocr engine aimed at video tutorials.
# creation date:(10/13/2015) 11/13/2015
# (c) James Jones
# Package-level Dependencies: ImageMagick, Tesseract, Xclip

#  current bugs:  text processed with the -a option will not show
#                 when following the -b option due to the presence of
#                 the binary data.  (13 Nov 2015)
#






STAMPU=$(date +%N)


#_function_definitions

screenshot(){
  import $HOME/vocr/ocred-$STAMPU.png
}


screenshot_to_text(){
  tesseract -l eng $HOME/vocr/ocred-$STAMPU.png $HOME/vocr/buffer
}


text_to_clipboard(){
  cat $HOME/vocr/$1 | xclip -selection c
}


add_buffer(){
  cat $HOME/vocr/buffer.txt >> $HOME/vocr/output.txt
}


replace_buffer(){
  cat $HOME/vocr/buffer.txt > $HOME/vocr/output.txt
}


binary_to_buffer(){
  cat $HOME/vocr/ocred-$STAMPU.png > $HOME/vocr/output.txt
}


usage(){

  echo "usage:  vocr [-harb]"
  echo "        -h    this help dialog"
  echo "        -a    add screencapture to existing buffer"
  echo "        -r    replace contents of existing buffer with newly-captured text"
  echo "        -b    replace contents of existing buffer with newly-captured binary data"

  exit 1
}

version(){
  echo ""
  echo "vocr version .01p (prototype)"
  echo "Copyright (C) 2015 James Jones, et al."
  echo "Distributed under the terms of the GNU GPL"
  echo ""
  exit 1
}



selection_type(){
  case $1 in
    -a | add )
      add_buffer
      ;;
    -r )
      replace_buffer
      ;;
    -b )
      binary_to_buffer
      ;;
  esac
}


log(){

  echo $(date): Filename: ocred-$STAMPU.png >> $HOME/vocr/output.log
}


