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

# for part 2, the nubmers can be spelled out. so a round of substitutions

# substitaitons don't work we need to handle the case of adjacent
# words, e.g. twone is really 2 1. time to rethink!

{  

    gsub(/one/, "1")
    gsub(/two/, "2")
    gsub(/three/, "3")
    gsub(/four/, "4")
    gsub(/five/, "5")
    gsub(/six/, "6")
    gsub(/seven/, "7")
    gsub(/eight/, "8")
    gsub(/nine/, "9")

    n=patsplit($0, z, /[0-9]/, x)
    t += z[1] * 10
    t +=  z[n]
    print z[1], z[n]
}

END { print t }
