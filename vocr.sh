#!/bin/bash
#
# scriptname: vocr.sh
# purpose: early prototype for video ocr engine aimed at video tutorials.
# creation date: 10/13/2015
# (c) James Jones

set -x

STAMPU=$(date +%N)


#_start

  gnome-screenshot -a -f /home/thepa/vocr/ocred-$STAMPU
  tesseract /home/thepa/vocr/ocred-$STAMPU /home/thepa/vocr/output
  echo -e \\n\\nFilename: ocred-$STAMPU >> /home/thepa/vocr/output.txt
  echo $(date): Filename: ocred-$STAMPU >> /home/thepa/vocr/output.log

