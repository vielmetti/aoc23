@test "we have a makefile" {
   test -f Makefile
}

@test "we have a README.md" {
   test -f README.md
}

@test "we have awk code" {
   test -f day01-2.awk
}

@test "we have shell code" {
   test -f day01-2.sh
}

@test "we got the expected data" {
   diff day01-2-sample.out day01-2-expected.data
}
