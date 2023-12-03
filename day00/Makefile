AOCDAY=day00
GAWK=/opt/homebrew/bin/gawk
GOAWK=/opt/homebrew/bin/goawk

goawktargets = \
	goawk/$(AOCDAY)-1.sample.out \
	goawk/$(AOCDAY)-1.out \
	goawk/$(AOCDAY)-2.sample.out \
	goawk/$(AOCDAY)-2.out 
	
all: $(AOCDAY)-1.sample.out $(AOCDAY)-1.out $(AOCDAY)-2.sample.out $(AOCDAY)-2.out \
	$(goawktargets)

$(AOCDAY)-1.bats.setup:
	echo "export AOCDAY=\"$(AOCDAY)-1\"" > $@

$(AOCDAY)-2.bats.setup:
	echo "export AOCDAY=\"$(AOCDAY)-2\"" > $@

$(AOCDAY)-1.sample.out: $(AOCDAY)-1.awk $(AOCDAY)-1.sample
	$(GAWK) -f $< < $(AOCDAY)-1.sample > $@

$(AOCDAY)-1.out: $(AOCDAY)-1.awk $(AOCDAY).data
	$(GAWK) -f $< < $(AOCDAY).data > $@

$(AOCDAY)-2.sample.out: $(AOCDAY)-2.awk $(AOCDAY)-2.sample
	$(GAWK) -f $< < $(AOCDAY)-2.sample > $@

$(AOCDAY)-2.out: $(AOCDAY)-2.awk $(AOCDAY).data
	$(GAWK) -f $<  < $(AOCDAY).data > $@

goawk/$(AOCDAY)-1.sample.out: $(AOCDAY)-1.awk $(AOCDAY)-1.sample
	$(GOAWK) -f $< < $(AOCDAY)-1.sample > $@

goawk/$(AOCDAY)-1.out: $(AOCDAY)-1.awk $(AOCDAY).data
	$(GOAWK) -f $< < $(AOCDAY).data > $@

goawk/$(AOCDAY)-2.sample.out: $(AOCDAY)-2.awk $(AOCDAY)-2.sample
	$(GOAWK) -f $< < $(AOCDAY)-2.sample > $@

goawk/$(AOCDAY)-2.out: $(AOCDAY)-2.awk $(AOCDAY).data
	$(GOAWK) -f $< < $(AOCDAY).data > $@

test1: $(AOCDAY)-1.sample.out $(AOCDAY)-1.bats.setup
	bats $(AOCDAY)-1.bats

test2: $(AOCDAY)-2.sample.out $(AOCDAY)-2.bats.setup
	bats $(AOCDAY)-2.bats

clean:
	rm ./*.out ./*.setup goawk/*.out
