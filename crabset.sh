#!/bin/bash
#quick launch of crab cameras and utilities.
export V4L2UCP_DEV="/dev/video2"

case $@ in
  0)
  cheese --device=/dev/video0 -w ;;
  1)
  cheese --device=/dev/video1 -w ;;
  2)
  cheese --device=/dev/video2 -w ;;
  -h)
  echo -e " camera?  (0, 1, 2)" ;;
esac
 # v4l2ucp /dev/video2

