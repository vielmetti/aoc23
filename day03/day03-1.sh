#!/bin/sh

# a little script to run the awk file
# and emit the result

# usage: day00-1.sh day00-sample.data day00-sample.out

/opt/homebrew/bin/gawk -f day03-1.awk < "$1" > "$2"
goawk -f day03-1.awk < "$1" > "goawk-$2"
