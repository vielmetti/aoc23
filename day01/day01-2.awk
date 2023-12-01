#!/usr/bin/awk

# awk template for aoc23

# put enough of the problem statement in the text
# so that the code is not totally inscrutable

# find the first and last number on each line
# put them together as a nubmer
# then add up all of the numbers and get a total

# we are going to do this with regex
# we going to do this with split
# we are going to do this with patsplit! and gawk

# tutorial: https://www.datafix.com.au/BASHing/2022-02-02.html

# first nubmer on the line

{  
    n=patsplit($0, z, /[0-9]/, x)
    t += z[1] * 10
    t +=  z[n]
}

END { print t }
