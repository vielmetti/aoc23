load day03-1.bats.setup

@test "we have a makefile" {
   test -f Makefile
}

@test "we have a README.md" {
   test -f README.md
}

@test "we have awk code" {
   test -f $AOCDAY.awk
}

@test "we have shell code" {
   test -f $AOCDAY.sh
}

@test "we got the expected data" {
   diff $AOCDAY.sample.out $AOCDAY.expected
}

@test "goawk same as gawk" {
   diff $AOCDAY.sample.out goawk-$AOCDAY.sample.out
}
