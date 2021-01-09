#!/bin/sh
gs                                                           \
  -o "$1_mirrored-vertical.pdf"                              \
  -sDEVICE=pdfwrite                                          \
  -dAutoRotatePages=/None                                    \
  -c "<</Install{0 362 translate 1 -1 scale}>>setpagedevice" \
  -f $1
