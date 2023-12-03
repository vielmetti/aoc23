# day 3 preparations for Advent of Code 2023

Set up a template for AOC23 solutions, with some assumptions
based on how last year's setup was.

What I need here:

- Makefile to put everything together
- Sample data for each day
- Problem data for each day
- an awk script that does the heavy lifting
- a shell script that wraps it all together
- a bats test harness that checks everything to be good

prestaged everything after hacking on day00 a bit.
what I should have if I'm doing it right is a single
file that has the bats setup with the day of the contest
in it, and everyhing else loading that file so that
there's the very minimum needed to set up the day.
