#!/usr/bin/awk

# awk template for aoc23

# put enough of the problem statement in the text
# so that the code is not totally inscrutable

# for the template, the problem is simple, print
# the second line of the data file

# and the second problem of the day is to print the 2d and 3d line

NR==2 { print }
NR==3 { print }
