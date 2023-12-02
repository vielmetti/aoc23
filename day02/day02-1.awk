#!/usr/bin/gawk

# Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green

# maximums 12 red, 13 green, 14 blue

BEGIN {
   max["r"] = 12
   max["g"] = 13
   max["b"] = 14
}

{
   over = 0

   game = $2
   sub(/:/, "", game)

   for( i = 3; i <= NF ; i+=2 ) {
        count = $i
        color = substr($(i+1), 1, 1)
        if ( count > max[color] ) {
            over = 1
        }
    }

    if ( over == 0 ) {
        t+=game
    }
}

END {
    print t
}

