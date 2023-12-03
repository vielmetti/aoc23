# day 0 preparations for Advent of Code 2023

Set up a template for AOC23 solutions, with some assumptions
based on how last year's setup was.

What I need here:

- Makefile to put everything together
- Sample data for each day
- Problem data for each day
- an awk script that does the heavy lifting
- a shell script that wraps it all together
- a bats test harness that checks everything to be good

a refinement: take out the shell scripts, they
just take up space and time. do the work
in the makefile.  next step will be to simplify
the makefile some.
