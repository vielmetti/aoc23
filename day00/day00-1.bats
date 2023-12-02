@test "we have a makefile" {
   test -f Makefile
}

@test "we have a README.md" {
   test -f README.md
}

@test "we have awk code" {
   test -f day00-1.awk
}

@test "we have shell code" {
   test -f day00-1.sh
}

@test "we got the expected data" {
   diff day00-1-sample.out day00-1-expected.data
}

@test "goawk same as awk" {
   diff day00-1-sample.out goawk-day00-1-sample.out
}
