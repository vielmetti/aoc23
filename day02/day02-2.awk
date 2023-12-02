#!/usr/bin/gawk

# Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green

# maximums 12 red, 13 green, 14 blue
# power 4 red * 2 green * 6 blue

BEGIN {
   t=0
}

{
   max["r"] = 0
   max["g"] = 0
   max["b"] = 0

   game = $2
   sub(/:/, "", game)

   for( i = 3; i <= NF ; i+=2 ) {
        count = $i
        color = substr($(i+1), 1, 1)
        if (count > max[color]) {
            max[color] = count
        }
          
    }

    power = max["r"] * max["g"] * max["b"]
    print power
    t+=power
}

END {
    print t
}

