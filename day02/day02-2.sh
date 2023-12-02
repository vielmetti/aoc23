#!/bin/sh

# a little script to run the awk file
# and emit the result

# usage: day00-1.sh day00-sample.data day00-sample.out

gawk -f day02-2.awk < "$1" > "$2"

