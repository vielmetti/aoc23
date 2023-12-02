all: day02-1-sample.out day02-1.out day02-2-sample.out day02-2.out

day02-1-sample.out: day02-1.awk day02-sample.data
	./day02-1.sh day02-sample.data day02-1-sample.out

day02-1.out: day02-1.awk day02.data
	./day02-1.sh day02.data day02-1.out

day02-2-sample.out: day02-2.awk day02-sample.data
	./day02-2.sh day02-2-sample.data day02-2-sample.out

day02-2.out: day02-2.awk day02.data
	./day02-2.sh day02.data day02-2.out

test1: day02-1-sample.out
	bats day02-1.bats

test2: day02-2-sample.out
	bats day02-2.bats

clean:
	rm ./*.out
