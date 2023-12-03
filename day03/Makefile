AOCDAY=day03

all: $(AOCDAY)-1.sample.out $(AOCDAY)-1.out $(AOCDAY)-2.sample.out $(AOCDAY)-2.out

$(AOCDAY)-1.sample.out: $(AOCDAY)-1.awk $(AOCDAY)-1.sample
	./$(AOCDAY)-1.sh $(AOCDAY)-1.sample $(AOCDAY)-1.sample.out

$(AOCDAY)-1.out: $(AOCDAY)-1.awk $(AOCDAY).data
	./$(AOCDAY)-1.sh $(AOCDAY).data $(AOCDAY)-1.out

$(AOCDAY)-2.sample.out: $(AOCDAY)-2.awk $(AOCDAY)-2.sample
	./$(AOCDAY)-2.sh $(AOCDAY)-2.sample $(AOCDAY)-2.sample.out

$(AOCDAY)-2.out: $(AOCDAY)-2.awk $(AOCDAY).data
	./$(AOCDAY)-2.sh $(AOCDAY).data $(AOCDAY)-2.out

test1: $(AOCDAY)-1.sample.out
	bats $(AOCDAY)-1.bats

test2: $(AOCDAY)-2.sample.out
	bats $(AOCDAY)-2.bats

clean:
	rm ./*.out
