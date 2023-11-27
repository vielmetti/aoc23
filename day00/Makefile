all: day00-1-sample.out day00-1.out day00-2-sample.out day00-2.out

day00-1-sample.out: day00-1.awk day00-sample.data
	./day00-1.sh day00-sample.data day00-1-sample.out

day00-1.out: day00-1.awk day00.data
	./day00-1.sh day00.data day00-1.out

day00-2-sample.out: day00-2.awk day00-sample.data
	./day00-2.sh day00-sample.data day00-2-sample.out

day00-2.out: day00-2.awk day00.data
	./day00-2.sh day00.data day00-2.out

test1: 
	bats day00-1.bats

test2:
	bats day00-2.bats

clean:
	rm *out
