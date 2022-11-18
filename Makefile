.PHONY: test build clean

test: hello
	./test.sh $<

build: hello

%: %.md
	perl -0777 -ne 'while(/^\s*(```+)\S+\s\Q$@\E(?:\s+\+=\s*)?\n(.*?)^\s*\1\s*$$/gms){print $$2}' $< > $@

clean:
	rm -f hello

