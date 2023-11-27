#!/bin/sh

# a little script to run the awk file
# and emit the result

# usage: day00-2.sh day00-sample.data day00-sample.out
# usage: day00-2.sh day00.data day00-2.out

awk -f day00-2.awk < $1 > $2
