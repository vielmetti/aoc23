all: day01-1-sample.out day01-1.out day01-2-sample.out day01-2.out

day01-1-sample.out: day01-1.awk day01-sample.data
	./day01-1.sh day01-sample.data day01-1-sample.out

day01-1.out: day01-1.awk day01.data
	./day01-1.sh day01.data day01-1.out

day01-2-sample.out: day01-2.awk day01-sample.data
	./day01-2.sh day01-2-sample.data day01-2-sample.out

day01-2.out: day01-2.awk day01.data
	./day01-2.sh day01.data day01-2.out

test1: day01-1-sample.out
	bats day01-1.bats

test2: day01-2-sample.out
	bats day01-2.bats

clean:
	rm ./*.out
