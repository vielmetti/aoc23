#!/usr/bin/awk

# awk template for aoc23

# put enough of the problem statement in the text
# so that the code is not totally inscrutable

# for the template, the problem is simple, print
# the second line of the data file

# one character per field

BEGIN {  }

# we are going to read the whole set into one array
# and then derive a second array with the 
# "adjacent to a symbol" logic

# all is everything
# num is all of the numerical fields
# sym is all of the non-numerical, non-dot fields

{ 
    field = length($0)
    rec = NR

    for(i=1; i<=length($0); i+=1) {

       all[NR,i] = substr($0, i, 1)
       this = all[NR,i]

       if ( this == ".") {
# do nothing
       } else if ( this+0 == this  ) {
         num[NR,i] = "n"
       } else if ( this == "*" ){
         sym[NR-1,i] = NR " " i
         sym[NR,i] =   NR " " i
         sym[NR+1,i] = NR " " i
       
         sym[NR+1,i-1] = NR " " i
         sym[NR,i-1] =   NR " " i
         sym[NR-1,i-1] = NR " " i

         sym[NR-1,i+1] = NR " " i
         sym[NR,i+1] =   NR " " i
         sym[NR+1,i+1] = NR " " i
       }
    }

}

END {
    innumber = 0
    nearsymbol = 0
    matchrf = ""

    for(r=1; r<=rec; r++) {
       for(f=1; f<=field; f++) {
          
          if(innumber==0 && num[r,f]=="n") {
             cur = all[r,f]
             innumber=1 
             if (sym[r,f] != "") {
                 nearsymbol=1
                 matchrf = sym[r,f]
             }
          } 
          else if(innumber==1 && num[r,f]=="n") {
             cur = cur*10 + all[r,f]
             innumber=1
	     if (sym[r,f] != "" ) {
                 nearsymbol=1
                 matchrf = sym[r,f]
             }
          }
          else if(innumber==1 && num[r,f]!="n") {
             innumber = 0
             if(nearsymbol!=0) {
                if(rf[matchrf]!=0) {
                   print cur*rf[matchrf]
                   t+=cur*rf[matchrf]
                }
                else
                   rf[matchrf]=cur
                cur = 0
                nearsymbol = 0
                matchrf = ""
             }
          }
       }
    }
    print t
}
