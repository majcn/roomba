#!/bin/sh 
## the filename without the extension .dia 

TMPFILE=`mktemp` || exit 1
dia -e $TMPFILE -t eps $1 

FILE=`echo $1 | sed 's/\(.*\)\..*/\1/'`

ps2pdf -dEPSCrop $TMPFILE $FILE.pdf
