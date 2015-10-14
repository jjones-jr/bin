    #!/bin/bash
#
# scriptname: vocr.sh
# purpose: early prototype for video ocr engine aimed at video tutorials.
# creation date: 10/13/2015
# (c) James Jones

set -x

STAMPU=$(date +%N)


#_start

  gnome-screenshot -a -f /home/thepa/vocr/ocred-$STAMPU.png
  cat /home/thepa/vocr/ocred-$STAMPU.png > /home/thepa/vocr/output.bin
  tesseract /home/thepa/vocr/ocred-$STAMPU.png /home/thepa/vocr/output
  echo -e \\n\\nFilename: ocred-$STAMPU.png >> /home/thepa/vocr/output.txt
  echo $(date): Filename: ocred-$STAMPU.png >> /home/thepa/vocr/output.log

