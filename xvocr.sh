#!/bin/bash
#
# scriptname: vocr.sh
# purpose: early prototype for video ocr engine aimed at video tutorials.
# creation date: 10/13/2015
# (c) James Jones

set -x

STAMPU=$(date +%N)


#_start

  import $HOME/vocr/ocred-$STAMPU.png
  cat $HOME/vocr/ocred-$STAMPU.png > $HOME/vocr/output.bin
  tesseract $HOME/vocr/ocred-$STAMPU.png $HOME/vocr/output
  echo -e \\n\\nFilename: ocred-$STAMPU.png > $HOME/vocr/output.txt
  echo $(date): Filename: ocred-$STAMPU.png >> $HOME/vocr/output.log
