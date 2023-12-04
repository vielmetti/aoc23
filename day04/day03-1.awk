#!/usr/bin/awk

# awk template for aoc23

# put enough of the problem statement in the text
# so that the code is not totally inscrutable

# for the template, the problem is simple, print
# the second line of the data file

# Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53

BEGIN { }

{
	inwinning=0
	incheck=0
        incard=0
        delete winning

	for (i=1; i<=NF; i++) {
	    if ($i=="Card") {
	        incard=1
            } else if (incard==1) {
                cardnum = $i
                sub(/:/, "", cardnum)
                incard = 0
                inwinning = 1
            } else if (inwinning==1 && $i!="|") {
                winning[$i] = 1
            } else if ($i=="|") {
                inwinning=0
                incheck=1
            } else if (incheck==1 && winning[$i]==1) {
                winners[cardnum]+=1
            }
         }
}

END {
        for (w in winners) {
            if(winners[w] != 0) {
                t += 2^(winners[w]-1)
                print w, winners[w]
            }
        }
        print t
}
                
